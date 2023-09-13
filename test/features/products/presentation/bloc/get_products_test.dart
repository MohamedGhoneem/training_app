// import 'package:mockito/mockito.dart';
// import 'package:untitled/core/models/error_model.dart';
// import 'package:untitled/features/products/data/model/product_model.dart';
// import 'package:untitled/features/products/data/model/products_model.dart';
// import 'package:untitled/features/products/domain/repositories/products_repo.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:untitled/features/products/presentation/bloc/products_bloc.dart';
//
//
// class MockProductsRepo extends Mock implements ProductsRepo {}
//
// void main() {
//   ProductsBloc? bloc;
//   MockProductsRepo? mockProductsRepo;
//   setUp(() {
//     mockProductsRepo = MockProductsRepo();
//     bloc = ProductsBloc();
//   });
//
//   // final productModel =
//   //     ProductModel(id: 1, title: 'test', description: 'Mock products test');
//   // final ProductsModel productsModel =
//   //     ProductsModel(products: [productModel], total: 1, skip: 0, limit: 1);
//   // test('get products', () async {
//   //   //arrange
//   //   when(usecase?.getProducts())
//   //       .thenAnswer((realInvocation) async => productsModel);
//   //
//   //   //act
//   //   final result = await usecase?.getProducts();
//   //   //assert
//   //   expect(result, productsModel);
//   //   verify(mockProductsRepo?.getProducts());
//   //   verifyNoMoreInteractions(mockProductsRepo);
//   // });
//
//
//   group('getProducts', () {
//     test('should return ProductsModel when request is successful', () async {
//       // Arrange
//       final productModel =
//       ProductModel(id: 1, title: 'test', description: 'Mock products test');
//       final ProductsModel productsModel =
//       ProductsModel(products: [productModel], total: 1, skip: 0, limit: 1);
//       when(bloc?.getProducts())
//           .thenAnswer((_) async => productsModel);
//
//       // Act
//       final result = await mockProductsRepo?.getProducts();
//
//       // Assert
//       expect(result, equals(productsModel));
//       verify(mockProductsRepo?.getProducts()).called(1);
//     });
//
//     test('should return ErrorModel when request fails', () async {
//       // Arrange
//       const errorMessage = 'Request failed';
//       final expectedErrorModel = ErrorModel(message: errorMessage);
//       when(bloc?.getProducts()).thenThrow(errorMessage);
//
//       // Act
//       final result = await mockProductsRepo?.getProducts();
//
//       // Assert
//       expect(result, equals(expectedErrorModel));
//       verify(mockProductsRepo?.getProducts()).called(1);
//     });
//   });
//
//
//
// }
