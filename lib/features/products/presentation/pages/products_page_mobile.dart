import 'package:app_fundamentals/app_fundamentals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/features/products/presentation/widgets/products_item_widget.dart';

import '../../data/model/products_model.dart';
import '../bloc/products_bloc.dart';


class ProductsPageMobile extends BaseStatefulWidget {
  const ProductsPageMobile({Key? key}) : super(key: key);

  @override
  State<ProductsPageMobile> createState() => _ProductsPageMobileState();
}

class _ProductsPageMobileState extends BaseState<ProductsPageMobile> {
 late ProductsBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = BlocProvider.of<ProductsBloc>(context);
    bloc.getProducts();
    listenForResponse(bloc).listen((event) { });
  }

  @override
  Widget setBody(BuildContext context) {
    return StreamBuilder<ProductsModel>(
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
                              '',)
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
