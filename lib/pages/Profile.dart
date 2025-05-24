import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/Edit_Profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EditProfile(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hey Gouri",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.blue.shade100,
                        child: const Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to Orders screen
                      },
                      child: ListTile(
                        trailing: const Icon(Icons.shopping_bag),
                        tileColor: Colors.white30,
                        title: Text(
                          "Orders",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to Wishlist screen
                      },
                      child: ListTile(
                        trailing: const Icon(Icons.favorite),
                        tileColor: Colors.white30,
                        title: Text(
                          "Wishlist",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to Coupons screen
                      },
                      child: ListTile(
                        trailing: const Icon(Icons.local_offer),
                        tileColor: Colors.white30,
                        title: Text(
                          "My Coupons",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                    GestureDetector(
                      onTap: () {
                        // TODO: Navigate to Payments screen
                      },
                      child: ListTile(
                        trailing: const Icon(Icons.payment),
                        tileColor: Colors.white30,
                        title: Text(
                          "Payments",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: Colors.black, thickness: 2),
                  ],
                ),
              ),
              // Fills remaining screen space
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.grey.shade300,
                  child: const Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(color: Colors.black87, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
