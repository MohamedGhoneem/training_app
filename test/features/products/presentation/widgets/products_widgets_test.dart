import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/core/my_app.dart';
import 'package:untitled/features/products/presentation/pages/products_page.dart';

void main() {
  testWidgets('verify Main text present on Main Page',
      (WidgetTester tester) async {
    //Arrange - Pump MyApp() widget to tester
    await tester.pumpWidget(const MyApp());
    //Assert - Check that button widget is present
    expect(find.text("Products"), findsOneWidget);

  });
}
