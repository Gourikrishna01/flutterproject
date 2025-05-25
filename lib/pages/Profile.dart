import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/pages/About.dart';
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
          child: ListView(
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
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Colors.grey.shade300,
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.help_outline,
                        color: Colors.black,
                      ),
                      title: const Text("FAQs"),
                      tileColor: Colors.white30,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.black,
                      ),
                      title: const Text("Privacy Policy"),
                      tileColor: Colors.white30,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AboutPage()),
                        );
                      },
                      leading: const Icon(
                        Icons.info_outline,
                        color: Colors.black,
                      ),
                      title: const Text("About Us"),
                      tileColor: Colors.white30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ), // black border
                    backgroundColor:
                        Colors.white, // optional: make background white
                    foregroundColor: Colors.black, // optional: text/icon color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  child: const Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
