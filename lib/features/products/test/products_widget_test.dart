import 'package:flutter/material.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:responsive_screen_type/responsive_screen_type.dart';
import '../data/model/products_response_model.dart';
import '../presentation/bloc/products_bloc.dart';
import '../presentation/view/products_view_mobile.dart';
import '../presentation/view/widget/products_item_widget.dart'; // Import your ProductsViewMobile class

class MockProductsBloc extends Mock implements ProductsBloc {}

void main() {
  testWidgets('ProductsViewMobile Widget Test', (WidgetTester tester) async {
    // Create a mock ProductsBloc
    final mockBloc = MockProductsBloc();
    // final sampleData = GetAllProductsResponseModel([Products(id: 2,title: "abdo", description: "tftft")]);

    // Define a mock Stream for the successStream
    // when(mockBloc.successStream)
    //     .thenAnswer((_) => Stream.value(sampleData));

    await tester.pumpWidget(
        ScreenTypeLayout(
          mobile: BlocProvider(
              bloc: ProductsBloc(),
              child: const ProductsViewMobile()),
        )
    );

    // Verify that the ProductsViewMobile widget is rendered
    expect(find.byType(ProductsViewMobile), findsOneWidget);

    // Verify that the Appbar is rendered
    expect(find.text('Products'), findsOneWidget);

    // Verify that the ProductsItemWidget is rendered based on the sample data
    // expect(find.byType(ProductsItemWidget),
    //     findsNWidgets(sampleData.products?.length ?? 0));

    // Perform additional tests as needed based on your widget's behavior
  });
}
