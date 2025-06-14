import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<Map<String, String>> items = [
    {
      "title": "Floral Summer Dress",
      "description": "Light and breezy floral dress, perfect for summer.",
      "image":
          "https://cdn.fcglcdn.com/brainbees/images/products/zoom/18966266a.webp",
    },
    {
      "title": "Evening Gown",
      "description": "Elegant gown for parties and formal events.",
      "image":
          "https://th.bing.com/th/id/OIP.W3-mrLZTuxs8usq_7qOLggAAAA?rs=1&pid=ImgDetMain",
    },
    {
      "title": "Lipstick Set",
      "description": "Matte finish lipstick in trendy shades.",
      "image":
          "https://www.revolutionbeauty.com/dw/image/v2/BCZJ_PRD/on/demandware.static/-/Sites-revbe-master-catalog/default/dw626686db/images/hi-res/Matte-Lipstick-Op1.jpg",
    },
    {
      "title": "Face Serum",
      "description": "Hydrating and glow-enhancing serum for daily use.",
      "image":
          "https://hips.hearstapps.com/ell.h-cdn.co/assets/17/02/640x843/gallery-1484165992-unknown.jpeg?resize=768:*",
    },
    {
      "title": "Casual Cotton Dress",
      "description": "Soft cotton dress for daily comfort and style.",
      "image":
          "https://www.fabvoguestudio.com/cdn/shop/files/92.1.jpg?v=1732009555&width=1080",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.75, // Adjusted for better fit
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image Section
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        item['image']!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Center(
                            child: CircularProgressIndicator(
                              value:
                                  loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                              color: Colors.orange,
                            ),
                          );
                        },
                        errorBuilder:
                            (context, error, stackTrace) =>
                                const Icon(Icons.error, color: Colors.red),
                      ),
                    ),
                  ),

                  // Text Content Section
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item['title']!,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.orange[800],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['description']!,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.orange[600],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Button Section
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[400],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 8),
                        ),
                        child: Text(
                          'Add to Cart',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
