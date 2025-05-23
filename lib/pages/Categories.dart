import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Categories"),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.favorite),
            SizedBox(width: 20),
            Icon(Icons.shopping_cart),
          ],
        ),
      ),
    );
  }
}
