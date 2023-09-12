import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/core/models/error_model.dart';
import 'package:untitled/features/products/data/model/products_model.dart';

import '../../data/repo/products_repo_impl.dart';

class ProductsBloc extends BaseBloc
    with RxdartBlocState<ProductsModel, ErrorModel> {
  BehaviorSubject<RequestState> requestStateSubject = BehaviorSubject.seeded(
      RequestState(status: RequestStatus.loading, message: ''));
  final ProductsRepoImpl _productsRepo = ProductsRepoImpl();

  Future checkIsolate() async {
    // var isolateThread = IsolateThread();
    // var response = await isolateThread.startIsolate(_productsRepo.isolateEntryPoint);
    // log('Isolate Response: $response'); // Print the response from the isolate
  }

  Future getProducts() async {
    checkIsolate();
    final model = await _productsRepo.getProducts();
    // var model2 = await _productsRepo.getProducts2();
    if (model is ProductsModel) {
      super.successSubject.sink.add(model);
      requestStateSubject.sink
          .add(RequestState(status: RequestStatus.success, message: 'SUCCESS'));
    }
    if (model is ErrorModel) {
      super
          .errorSubject
          .sink
          .add(ErrorModel(statusCode: 500, message: model.message));
      requestStateSubject.sink.add(RequestState(
          status: RequestStatus.error, message: model.message ?? '',),);
    }
  }

  @override
  void dispose() {
    requestStateSubject.close();
  }
}
