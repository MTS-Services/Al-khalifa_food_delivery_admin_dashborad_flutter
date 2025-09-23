import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/addproduct_controller.dart';

class AddProductView extends GetView<AddproductController> {
  const AddProductView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddproductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AddproductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
