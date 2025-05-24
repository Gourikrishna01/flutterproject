import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/Categories.dart';
import 'package:project/pages/Details.dart';
import 'package:project/pages/Profile.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int indexNum = 0;

  final List<Widget> tabWidgets = [Details(), Categories(), Profile()];

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
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: indexNum,
            onTap: (int index) {
              setState(() {
                indexNum = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: "Category",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Person",
              ),
            ],
          ),
          body: tabWidgets[indexNum],
        ),
      ),
    );
  }
}
