import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:product_manager/app/app.dart';
import 'package:product_manager/app/app_module.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: App()));
}
