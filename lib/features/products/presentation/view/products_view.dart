import 'package:flutter/material.dart';
import 'package:responsive_screen_type/responsive_screen_type.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/features/products/view/products_view_mobile.dart';

import '../bloc/products_bloc.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
      mobile: BlocProvider(
          bloc: ProductsBloc(),
          child: const ProductsViewMobile()),
    );
  }
}