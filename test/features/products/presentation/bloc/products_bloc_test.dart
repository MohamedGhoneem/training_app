import 'dart:convert';
import 'dart:developer';

import 'package:mockito/mockito.dart';
import 'package:untitled/core/models/error_model.dart';
import 'package:untitled/features/products/data/model/product_model.dart';
import 'package:untitled/features/products/data/model/products_model.dart';
import 'package:untitled/features/products/data/repo/products_repo_impl.dart';
import 'package:untitled/features/products/domain/repositories/products_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/features/products/presentation/bloc/products_bloc.dart';


class MockProductsRepo extends Mock implements ProductsRepo {}

void main() {
  late ProductsBloc bloc;
  late MockProductsRepo mockProductsRepo;
  setUp(() {
    mockProductsRepo = MockProductsRepo();
    bloc = ProductsBloc(mockProductsRepo);
  });


  test('should return list products when request is successful', () async {
    // Arrange
    final productModel =
    ProductModel(id: 1, title: 'product1', description: 'product1 description');
    final ProductsModel productsModel =
    ProductsModel(products: [productModel, productModel], total: 2, skip: 0, limit: 2);


    when(mockProductsRepo.getProducts())
        .thenAnswer((_) async => productsModel);

    final result = await bloc.getProducts();
    print("print log for me >>> $result");
    debugger();

    expect(result, equals(productsModel));
  });
}
