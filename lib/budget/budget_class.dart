import 'package:flutter/material.dart';

class Budget {
  final Widget selectedimgCategory;
  final String selectedCategory;
  final String selectedSubcategory;
  final double mainAmount;
  final double subAmount;
  final Image subCategoryimg;

  Budget({
    required this.selectedimgCategory,
    required this.selectedCategory,
    required this.selectedSubcategory,
    required this.mainAmount,
    required this.subAmount,
    required this.subCategoryimg,
  });
}