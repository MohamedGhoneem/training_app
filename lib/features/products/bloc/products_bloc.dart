import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/core/models/error_model.dart';
import '../model/products_response_model.dart';
import '../repo/products_repo.dart';

class ProductsBloc extends BaseBloc
    with RxdartBlocState<GetAllProductsResponseModel, ErrorModel> {
  BehaviorSubject<RequestState> requestStateSubject = BehaviorSubject.seeded(
      RequestState(status: RequestStatus.loading, message: ''));
  final ProductsRepo _productsRepo = ProductsRepo();

  Future checkIsolate() async {
    // var isolateThread = IsolateThread();
    // var response = await isolateThread.startIsolate(_productsRepo.isolateEntryPoint);
    // log('Isolate Response: $response'); // Print the response from the isolate
  }

  Future getProducts() async {
    checkIsolate();
    var model = await _productsRepo.getProducts();
    // var model2 = await _productsRepo.getProducts2();
    // if (model is GetAllProductsResponseModel) {
    //   super.successSubject.sink.add(model);
    //   requestStateSubject.sink
    //       .add(RequestState(status: RequestStatus.success, message: 'SUCCESS'));
    // }
    // if (model is ErrorModel) {
      super.errorSubject.sink.add(ErrorModel(statusCode: 500,message: 'test'));
      requestStateSubject.sink.add(RequestState(
          status: RequestStatus.error, message: 'test'));
    // }
  }

  @override
  void dispose() {
    requestStateSubject.close();
  }
}
