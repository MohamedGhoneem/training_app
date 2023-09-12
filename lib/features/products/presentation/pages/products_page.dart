import 'package:flutter/material.dart';
import 'package:responsive_screen_type/responsive_screen_type.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/features/products/presentation/pages/products_page_mobile.dart';

import '../bloc/products_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
      mobile: BlocProvider(
          bloc: ProductsBloc(),
          child: const ProductsPageMobile()),
    );
  }
}