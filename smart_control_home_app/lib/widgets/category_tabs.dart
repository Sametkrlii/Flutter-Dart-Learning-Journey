import 'package:flutter/material.dart';

import '../constants/app_paddings.dart';

class CategoryTabs extends StatelessWidget {
  const CategoryTabs({
    super.key,
    required this.selectedCategory,
    required this.onCategorySelected,
    required this.textColor,
  });

  final String selectedCategory;
  final ValueChanged<String> onCategorySelected;
  final Color textColor;

  static const List<String> categories = [
    'All Devices',
    'Favorites',
    'Kitchen',
    'Living Room',
    'Bed Room',
    'Home',
    'Hallway',
    'Balcony',
    'Attic',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.listViewPadding,
      child: SizedBox(
        height: 50,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          separatorBuilder: (context, index) => const SizedBox(width: 4),
          itemBuilder: (context, index) {
            final category = categories[index];
            final isSelected = selectedCategory == category;

            return TextButton(
              onPressed: () => onCategorySelected(category),
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeOutCubic,
                style: TextStyle(
                  fontSize: isSelected ? 26 : 18,
                  color: isSelected ? textColor : textColor.withAlpha(97),
                ),
                child: Text(category),
              ),
            );
          },
        ),
      ),
    );
  }
}
