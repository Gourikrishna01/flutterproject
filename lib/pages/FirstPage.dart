import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle navigation or logic
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(12),
                        backgroundColor: Colors.white,
                        shadowColor: Colors.grey,
                        elevation: 5,
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/512/891/891462.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "All Categories",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
