import 'package:rxdart_bloc/rxdart_bloc.dart';
import 'package:untitled/features/products/data/model/product_model.dart';

import '../../domain/entities/products_entity.dart';

class ProductsModel extends ProductsEntity implements BaseModel<ProductsModel> {
  ProductsModel(
      {List<ProductModel>? products, int? total, int? skip, int? limit})
      : super(products: products, total: total, skip: skip, limit: limit);

  ProductsModel.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <ProductModel>[];
      json['products'].forEach((v) {
        products!.add(ProductModel.fromJson(v as Map<String, dynamic>));
      });
    }
    total = json['total'] as int;
    skip = json['skip'] as int;
    limit = json['limit'] as int;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['skip'] = skip;
    data['limit'] = limit;
    return data;
  }

  @override
  ProductsModel fromJson(Map<String, dynamic> json) {
    return ProductsModel.fromJson(json);
  }
}
