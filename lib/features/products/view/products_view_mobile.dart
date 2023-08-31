import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/features/products/view/widget/products_item_widget.dart';

import '../bloc/products_bloc.dart';
import '../model/products_response_model.dart';

class ProductsViewMobile extends BaseStatefulWidget {
  const ProductsViewMobile({Key? key}) : super(key: key);

  @override
  State<ProductsViewMobile> createState() => _ProductsViewMobileState();
}

class _ProductsViewMobileState extends BaseState<ProductsViewMobile> {
  ProductsBloc bloc = ProductsBloc();

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<ProductsBloc>(context);
    bloc.getProducts();
    listenForResponse(bloc).listen((event) { });
  }

  @override
  Widget setBody(BuildContext context) {
    return StreamBuilder<GetAllProductsResponseModel>(
        stream: bloc.successStream,
        builder: (context, snapshot) {
          return StreamingResult(
            subject: bloc.requestStateSubject,
            successWidget: ListView.builder(
                itemCount: snapshot.data?.products?.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ProductsItemWidget(
                        content: snapshot.data?.products?[index],
                      ),
                      AppImage(
                          path: snapshot.data?.products![index].images?.first ??
                              '')
                    ],
                  );
                }),
            retry: () => bloc.getProducts(),
          );
        });
  }

  @override
  bool showBottomNavigationBar() {
    return true;
  }

  @override
  PreferredSizeWidget? setAppbar() {
    return AppBar(
      title: const Text('Products'),
      centerTitle: true,
      elevation: 2,
      toolbarHeight: 50,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
    );
  }
}
