// ignore_for_file: depend_on_referenced_packages, use_build_context_synchronously

import 'dart:isolate';
import 'package:network_implementation/network_implementation.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/core/models/error_model.dart';
import 'package:untitled/features/products/domain/repositories/products_repo.dart';
import '../../../../core/my_app.dart';
import '../model/products_model.dart';

class ProductsRepoImpl implements ProductsRepo {
  final NetworkImplementation _network =
      NetworkImplementation.instance('https://dummyjson.com/');
  final NetworkImplementation _network2 =
      NetworkImplementation.instance('https://dummyjson.com/');

  @override
  Future<BaseModel> getProducts() async {
    try {
      final response = await _network.request(
        HttpMethod.get,
        endpoint: 'products',
        headers: {'lang': 'en'},
      );
      _network.nirikshak.showNirikshak(navigatorKey.currentState!.context);
      return ProductsModel.fromJson(
        response?.data,
      );
    } catch (e) {
      return ErrorModel.fromJson(e);
    }
  }

  @override
  Future<BaseModel> getProducts2() async {
    try {
      final response =
          await _network2.request(HttpMethod.get, endpoint: 'products');
      return ProductsModel.fromJson(response?.data);
    } catch (e) {
      return ErrorModel.fromJson(e);
    }
  }

  Future<void> isolateEntryPoint(SendPort sendPort) async {
    final response =
        await _network.request(HttpMethod.get, endpoint: 'products');
    sendPort.send(
      response?.data,
    ); // sending data back to the main thread's function
  }
}
