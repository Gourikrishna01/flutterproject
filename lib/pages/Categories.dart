import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/Details.dart';
import 'package:project/pages/Home.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange[400],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories Grid
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildCategoryCard(
                    Icons.category,
                    "All Products",
                    Colors.orange[600]!,
                  ),
                  _buildCategoryCard(Icons.woman, "Women", Colors.orange[500]!),
                  _buildCategoryCard(Icons.man, "Men", Colors.orange[500]!),
                  _buildCategoryCard(
                    Icons.child_care,
                    "Kids",
                    Colors.orange[500]!,
                  ),
                  _buildCategoryCard(
                    Icons.brush,
                    "Beauty",
                    Colors.orange[500]!,
                  ),
                  _buildCategoryCard(
                    Icons.shopping_bag,
                    "Accessories",
                    Colors.orange[500]!,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(IconData icon, String label, Color iconColor) {
    return GestureDetector(
      onTap: () {
        Widget targetPage;

        switch (label) {
          case "All Products":
            targetPage = const Details();
            break;
          case "Women":
          case "Men":
          case "Kids":
          case "Beauty":
          case "Accessories":
            targetPage = const Home();
            break;
          default:
            targetPage = const Scaffold(
              body: Center(child: Text("No Page Found")),
            );
        }

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.orange[50],
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 30, color: iconColor),
            ),
            const SizedBox(height: 12),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.orange[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
