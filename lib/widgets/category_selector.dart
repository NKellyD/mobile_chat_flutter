import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
 int selectedIndex = 0;
 List<String> categories = ['Messages','Online','Groups','Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.blue,
    );
  }
}
