import 'dart:isolate';
import 'package:network_implementation/network_implementation.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/core/models/error_model.dart';
import '../model/products_response_model.dart';
import 'products_repo_interface.dart';

class ProductsRepo implements ProductsRepoInterface {
  final NetworkImplementation _network =
      NetworkImplementation.instance('https://dummyjson.com/');
  final NetworkImplementation _network2 =
      NetworkImplementation.instance('https://dummyjson.com/');

  @override
  Future<BaseModel> getProducts() async {
    try {
      var response = await _network.request(HttpMethod.get,
          endpoint: 'products', headers: {'lang': 'en'});
      return GetAllProductsResponseModel.fromJson(response?.data);
    } catch (e) {
      return ErrorModel.fromJson(e);
    }
  }

  @override
  Future<BaseModel> getProducts2() async {
    try {
      var response =
          await _network2.request(HttpMethod.get, endpoint: 'products');
      return GetAllProductsResponseModel.fromJson(response?.data);
    } catch (e) {
      return ErrorModel.fromJson(e as dynamic);
    }
  }

  void isolateEntryPoint(SendPort sendPort) async {
    var response = await _network.request(HttpMethod.get, endpoint: 'products');
    sendPort.send(
        response?.data); // sending data back to the main thread's function
  }
}
