import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asp/asp.dart';
import 'package:product_manager/modules/register/model/category_enum.dart';
import 'package:product_manager/modules/register/model/product.dart';

final productsAtom = atom<List<ProductModel>>(([]));

class RegisterViewModel {
  final TextEditingController idController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();

  void registerProduct() {
    final id = idController.text.trim();
    final description = descriptionController.text.trim();
    final categoryText = categoryController.text.trim();

    if (id.isEmpty || description.isEmpty || categoryText.isEmpty) {
      debugPrint('⚠️ Missing fields — cannot register');
    }

    final category = ProductCategory.values.firstWhere(
      (c) => c.displayName.toLowerCase() == categoryText.toLowerCase(),
      orElse: () => ProductCategory.snacks,
    );

    final newProduct = ProductModel(
      id: id,
      description: description,
      category: category,
    );

    final currentList = List<ProductModel>.from(productsAtom.state);

    currentList.add(newProduct);

    Future.delayed(const Duration(milliseconds: 500), () {
      clearFields();
      Modular.to.pop();
    });
  }

  void clearFields() {
    idController.clear();
    descriptionController.clear();
    categoryController.clear();
  }

  void dispose() {
    idController.dispose();
    descriptionController.dispose();
    categoryController.dispose();
  }
}
