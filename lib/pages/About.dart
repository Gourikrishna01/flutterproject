import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Us',
          style: GoogleFonts.poppins(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Shopify, your all-in-one eCommerce shopping destination, powered by the world's leading commerce platform.",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                "We built this app with one goal in mind — to give you a seamless and enjoyable shopping experience right at your fingertips. Whether you’re hunting for fashion, electronics, home essentials, or lifestyle accessories, we bring a world of curated products directly to your mobile device.",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                "Why Shop With Us?",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              _buildBulletPoint(
                "🛍️ Wide Selection: Handpicked products from trusted brands and emerging creators.",
              ),
              _buildBulletPoint(
                "🚚 Fast Shipping: Get your orders quickly and reliably.",
              ),
              _buildBulletPoint(
                "🔐 Secure Checkout: Powered by Shopify’s trusted payment systems.",
              ),
              _buildBulletPoint(
                "📱 User-Friendly Interface: Designed for smooth, simple, and fast mobile shopping.",
              ),
              const SizedBox(height: 20),
              Text(
                "We’re more than just a store — we’re a community of modern shoppers who value quality, convenience, and innovation. Our Shopify-backed infrastructure ensures every transaction is secure, every order is tracked, and every customer is supported.",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Text(
                "Thank you for choosing Shopify. Happy shopping!",
                style: GoogleFonts.poppins(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(text, style: GoogleFonts.poppins(fontSize: 16)),
    );
  }
}
