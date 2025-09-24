import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String selectedMenu;
  final List<String> menuOptions;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final ValueChanged<bool?>? onChecked;
  final bool isChecked;

  const CategoriesCard({
    super.key,
    required this.imageUrl,
    required this.selectedMenu,
    required this.menuOptions,
    this.onEdit,
    this.onDelete,
    this.onChecked,
    this.isChecked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: onChecked,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  activeColor: Colors.orange,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    imageUrl,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      width: 60,
                      height: 60,
                      color: Colors.grey[200],
                      child: const Icon(Icons.image, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(width: 16),
            SizedBox(
              width: 150,
              child: DropdownButtonFormField<String>(
                value: selectedMenu,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 12,
                  ),
                ),
                items: menuOptions
                    .map((menu) => DropdownMenuItem(
                  value: menu,
                  child: Text(
                    menu,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
                    .toList(),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(width: 12),
            PopupMenuButton<String>(
              icon: const Icon(Icons.settings, color: Colors.orange),
              onSelected: (value) {
                if (value == 'Edit' && onEdit != null) onEdit!();
                if (value == 'Delete' && onDelete != null) onDelete!();
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'Edit',
                  child: Row(
                    children: [
                      Icon(Icons.edit, color: Colors.blue, size: 18),
                      SizedBox(width: 8),
                      Text('Edit'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'Delete',
                  child: Row(
                    children: [
                      Icon(Icons.delete, color: Colors.red, size: 18),
                      SizedBox(width: 8),
                      Text('Delete'),
                      Divider()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
