import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/Categories.dart';
import 'package:project/pages/Home.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu, color: Colors.black),
            actions: const [
              Icon(Icons.favorite, color: Colors.black),
              SizedBox(width: 10),
              Icon(Icons.notifications, color: Colors.black),
              SizedBox(width: 10),
              Icon(Icons.shopping_cart, color: Colors.black),
              SizedBox(width: 10),
            ],
            title: Text(
              "Shopify",
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 20),
            ),
            backgroundColor: Colors.grey.shade300,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      hintText: "Search here...",
                      suffixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),

                // Category Title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

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
                      _buildCategoryCard(Icons.category, "category"),
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
      ),
    );
  }

  // Helper method for category cards
  Widget _buildCategoryCard(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        Widget targetPage;

        switch (label) {
          case "category":
            targetPage = Categories();
          case "Women":
            targetPage = Home();
            break;
          case "Men":
            targetPage = Home();
            break;
          case "Kids":
            targetPage = Home();
            break;
          case "Beauty":
            targetPage = Home();
            break;
          default:
            targetPage = const Scaffold(
              body: Center(child: Text("No Page Found")),
            );
        }

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },

      child: SizedBox(
        width: 50, // Adjust width as needed
        height: 50, // Adjust height as needed
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
          color: Colors.grey.shade100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 30,
                color: Colors.purple,
              ), // Reduced icon size too
              const SizedBox(height: 8),
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 14, // Slightly smaller font
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
