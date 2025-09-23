import 'package:al_khalifa_dashboard/app/data/image_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../product_category/widget/add_menu_form.dart';
import '../controllers/addproduct_controller.dart';
import '../widget/categories_card.dart';

class CategoriesScreen extends GetView<AddproductController> {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            children: [
              buildAddCateroiesButton(context),
              const SizedBox(height: 15),
              _buildHeader(),
              const SizedBox(height: 15),
              _buildCategoriesCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesCard() {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategoriesCard(
            imageUrl: ImagePath.menuItem,
            selectedMenu: "Kitchen menu",
            menuOptions: ["Kitchen menu", "Rooftop menu", "Bangla menu"],
            onEdit: () {
              print("Edit clicked");
            },
            onDelete: () {
              print("Delete clicked");
            },
            onChecked: (checked) {
              print("Checked: $checked");
            },
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Name',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Action',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildAddCateroiesButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            showAddMenuDialog(
              context: context,
              categories: ["Kitchen menu", "Rooftop menu", "Bangle menu"],
              onSave: (Map<String, dynamic> data) {
                print("Saved Data: $data");
              },
            );
          },
          child: const Text('Add Categories' ,style: TextStyle(fontSize: 14),),
        ),
      ],
    );
  }

  Future<void> showAddMenuDialog({
    required BuildContext context,
    required List<String> categories,
    required void Function(Map<String, dynamic>) onSave,
  }) async {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SizedBox(
            width: 500,
            child: AddMenuForm(
              categories: categories,
              onSave: onSave,
            ),
          ),
        );
      },
    );
  }
}
