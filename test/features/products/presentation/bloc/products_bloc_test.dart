import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled/core/models/error_model.dart';
import 'package:untitled/features/products/data/model/product_model.dart';
import 'package:untitled/features/products/data/model/products_model.dart';
import 'package:untitled/features/products/data/repo/products_repo_impl.dart';
import 'package:untitled/features/products/domain/repositories/products_repo.dart';
import 'package:untitled/features/products/presentation/bloc/products_bloc.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';

import 'products_bloc_test.mocks.dart';

@GenerateMocks([ProductsRepo])
void main() {
  late ProductsBloc bloc;
  final mockProductsRepo = MockProductsRepo();
  setUp(() {
     bloc = ProductsBloc(mockProductsRepo);
  });

  Future<BaseModel> getDummyProducts() {
    final productModel = ProductModel(
        id: 1, title: 'product1', description: 'product1 description');
    final ProductsModel productsModel = ProductsModel(
        products: [productModel, productModel], total: 2, skip: 0, limit: 2);

    var completer = Completer<ProductsModel>();

    // At some time you need to complete the future:
    completer.complete(productsModel);

    return completer.future;
  }
  Future<BaseModel> getDummyError(){
    var completer = Completer<ErrorModel>();
    const errorMessage = 'Failed';
    final error = ErrorModel(message: errorMessage);
    // At some time you need to complete the future:
    completer.complete(error);

    return completer.future;
  }

  test('getProducts repo', () async {
    final repo = ProductsRepoImpl();
    final result = await repo.getProducts();
    expect(result, isA<ProductsModel>());
  });

  test('should return list products when request is successful', () async {
    // Arrange
    when(mockProductsRepo.getProducts())
        .thenAnswer((_) => getDummyProducts());
    final result = await bloc.getProducts() as ProductsModel;
    final fake = await getDummyProducts() as ProductsModel;
    expect(result.products?[0].title, fake.products?[0].title);
  });


  test('should return ErrorModel when request fails', () async {

    when(mockProductsRepo.getProducts())
        .thenAnswer((_) async => getDummyError());
    // Act
    final result = await bloc.getProducts();

    // Assert
    expect(result, isA<ErrorModel>());
  });

}
