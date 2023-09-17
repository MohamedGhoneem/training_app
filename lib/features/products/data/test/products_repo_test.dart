import 'dart:isolate';
import '../repo/products_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';

void main() {
  group('ProductsRepo', () {
    // test function 1
    test('getProducts should return a valid BaseModel', () async {
      final repo = ProductsRepo();
      final result = await repo.getProducts();
      expect(result, isA<BaseModel>());
    });
    // test function 2
    test('getProducts2 should return a valid BaseModel', () async {
      final repo = ProductsRepo();
      final result = await repo.getProducts2();
      expect(result, isA<BaseModel>());
    });
     //test data is not null
    test('check if data not null', () async {
      final repo = ProductsRepo();
      final receivePort = ReceivePort();
      await Isolate.spawn(repo.isolateEntryPoint, receivePort.sendPort);
      final response = await receivePort.first;
      expect(response, isNotNull);
    });
  });
}
