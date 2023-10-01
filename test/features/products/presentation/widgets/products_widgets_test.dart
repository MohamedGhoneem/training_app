import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:responsive_screen_type/responsive_screen_type.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/features/products/data/model/product_model.dart';
import 'package:untitled/features/products/data/model/products_model.dart';
import 'package:untitled/features/products/presentation/bloc/products_bloc.dart';
import 'package:untitled/features/products/presentation/pages/products_page_mobile.dart';

import '../../data/repo/products_repo_test.dart';

void main() {

  late ProductsBloc bloc;
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

  Widget createTestWidget(){
    return MaterialApp(
      title: 'Flutter Demo',
      home: ScreenTypeLayout(
        mobile: BlocProvider(
            bloc: bloc,
            child: const ProductsPageMobile()),
      ),
    );
  }

  testWidgets('verify Main text present on Main Page',
      (WidgetTester tester) async {
    //Arrange - Pump MyApp() widget to tester
    when(bloc.getProducts())
            .thenAnswer((_) => getDummyProducts());

    await tester.pumpWidget(createTestWidget());


    await tester.pump(const Duration(milliseconds: 500));
    //Assert - Check that button widget is present
    expect(find.text("Products"), findsOneWidget);

  });
}
