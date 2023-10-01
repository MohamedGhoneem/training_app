
import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:untitled/core/models/error_model.dart';
import 'package:untitled/features/products/data/model/product_model.dart';
import 'package:untitled/features/products/data/model/products_model.dart';
import 'package:untitled/features/products/data/repo/products_repo_impl.dart';
import 'package:untitled/features/products/domain/repositories/products_repo.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';

import 'products_repo_test.mocks.dart';


@GenerateMocks([ProductsRepo])
final mockProductsRepo = MockProductsRepo();
void main() {

  test('getProducts repo', () async {
    final repo = ProductsRepoImpl();
    final result = await repo.getProducts();
    expect(result, isA<ProductsModel>());
  });

}
