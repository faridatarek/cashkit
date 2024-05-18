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
List<Budget> budgetList_needs = [];
List<Budget> budgetList_wants = [];
List<Budget> budgetList_emergency = [];