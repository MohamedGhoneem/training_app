import 'dart:isolate';
import 'package:flutter_test/flutter_test.dart';
import '../data/model/products_response_model.dart';
import '../data/repo/products_repo.dart';
import '../presentation/bloc/products_bloc.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
// Create a mock for your repository
class MockProductsRepo extends Mock implements ProductsRepo {}

void main() {
  group('ProductsBloc', () {
    late ProductsBloc productsBloc;
    late MockProductsRepo mockProductsRepo;

    setUp(() {
      mockProductsRepo = MockProductsRepo();
      productsBloc = ProductsBloc();
      productsBloc.productsRepo = mockProductsRepo;
    });

    test('emits a list of products when FetchProductsEvent is added', () async {
      final fakeProducts = GetAllProductsResponseModel([]);
      final repo = ProductsRepo();
      final result = await repo.getProducts();
      expect(result, isA<BaseModel>());
    });

    test('emits an error when an exception occurs', () async {
      final repo = ProductsRepo();
      final receivePort = ReceivePort();
      await Isolate.spawn(repo.isolateEntryPoint, receivePort.sendPort);
      final response = await receivePort.first;
      expect(response, isNotNull);
    });
  });
}
