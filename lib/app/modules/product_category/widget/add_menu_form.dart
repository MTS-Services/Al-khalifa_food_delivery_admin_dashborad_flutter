import 'dart:io';
import 'package:al_khalifa_dashboard/app/data/app_colors.dart';
import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import 'image_picker_box .dart';


class AddMenuForm extends StatefulWidget {
  final List<String> categories;
  final void Function(Map<String, dynamic>) onSave;

  const AddMenuForm({
    super.key,
    required this.categories,
    required this.onSave,
  });

  @override
  State<AddMenuForm> createState() => _AddMenuFormState();
}
class _AddMenuFormState extends State<AddMenuForm> {
  String? selectedCategory;
  File? selectedImage;

  final titleController = TextEditingController();
  final priceController = TextEditingController();
  final descriptionController = TextEditingController();

  void _saveForm() {
    final data = {
      "category": selectedCategory,
      "price": priceController.text,
      "title": titleController.text,
      "description": descriptionController.text,
      "image": selectedImage,
    };
    widget.onSave(data);
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add new menu",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ImagePickerBox(onImagePicked: (file) => selectedImage = file),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      labelText: "Main category",
                      border: OutlineInputBorder(),
                    ),
                    items: widget.categories
                        .map((cat) =>
                        DropdownMenuItem(value: cat, child: Text(cat)))
                        .toList(),
                    onChanged: (value) => setState(() {
                      selectedCategory = value;
                    }),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomTextField(
                    label: "Price",
                    keyboardType: TextInputType.number,
                    controller: priceController,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            CustomTextField(label: "Title", controller: titleController),
            const SizedBox(height: 16),

            CustomTextField(
              label: "Description",
              maxLines: 4,
              controller: descriptionController,
            ),
            const SizedBox(height: 20),

            // Save Button
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: _saveForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor:AppColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text("Save"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
