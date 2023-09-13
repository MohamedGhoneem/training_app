
import 'package:untitled/features/products/data/model/product_model.dart';

  class ProductsEntity {
  List<ProductModel>? products;
  int? total;
  int? skip;
  int? limit;

  ProductsEntity(
      {this.products, this.total, this.skip, this.limit});

}
