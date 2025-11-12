import 'package:product_manager/modules/register/model/category_enum.dart';

class ProductModel {
  final String id;
  final String description;
  final ProductCategory category;

  ProductModel({
    required this.id,
    required this.description,
    required this.category,
  });

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $description, categoria: $category)';
  }
}
