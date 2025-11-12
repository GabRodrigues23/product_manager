import 'package:flutter/material.dart';
import 'package:product_manager/modules/register/viewmodel/register_viewmodel.dart';

final viewModel = RegisterViewModel();

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register Product',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: theme.secondary,
        foregroundColor: theme.onSecondary,
      ),
      backgroundColor: theme.primaryFixed,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 12,
            children: [
              TextField(
                controller: viewModel.idController,
                decoration: InputDecoration(
                  labelText: 'ID',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextField(
                controller: viewModel.descriptionController,
                decoration: InputDecoration(
                  labelText: 'DESCRIPTION',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              TextField(
                controller: viewModel.categoryController,
                decoration: InputDecoration(
                  labelText: 'CATEGORY',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.registerProduct();
                },
                child: const Text('REGISTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
