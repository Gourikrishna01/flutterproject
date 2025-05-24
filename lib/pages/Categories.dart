import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/Home.dart'; // Make sure this exists

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Title
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Categories",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Categories Grid
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildCategoryCard(Icons.category, "Category"),
                    _buildCategoryCard(Icons.woman, "Women"),
                    _buildCategoryCard(Icons.man, "Men"),
                    _buildCategoryCard(Icons.child_care, "Kids"),
                    _buildCategoryCard(Icons.brush, "Beauty"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for category cards
  Widget _buildCategoryCard(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        Widget targetPage;

        switch (label) {
          case "Category":
            targetPage = const Categories();
            break;
          case "Women":
          case "Men":
          case "Kids":
          case "Beauty":
            targetPage =
                const Home(); // Replace with appropriate pages if needed
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        color: Colors.grey.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: Colors.purple),
            const SizedBox(height: 8),
            Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
