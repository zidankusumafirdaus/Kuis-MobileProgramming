import 'package:flutter/material.dart';

class Soal1Page extends StatelessWidget {
  const Soal1Page({super.key});

  final List<Map<String, dynamic>> produk = const [
    {"nama": "Kemeja Putih", "harga": 120000, "icon": Icons.checkroom},
    {"nama": "Sepatu Sport", "harga": 350000, "icon": Icons.directions_run},
    {"nama": "Tas Kulit", "harga": 240000, "icon": Icons.shopping_bag},
    {"nama": "Headphone", "harga": 180000, "icon": Icons.headphones},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Soal 1 — Grid Produk"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0.5,
      ),

      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 18,
            mainAxisSpacing: 18,
            childAspectRatio: 0.78,
          ),
          itemCount: produk.length,
          itemBuilder: (context, index) {
            final item = produk[index];

            return InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Detail: ${item['nama']}")),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                  // Border ala screenshot
                  border: Border.all(color: Colors.grey.shade300, width: 1.2),

                  // Shadow halus ala elegant modern
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300.withOpacity(0.4),
                      offset: const Offset(0, 4),
                      blurRadius: 12,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(18),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ICON DALAM CONTAINER ROUND ALA SCREENSHOT
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        item["icon"],
                        size: 40,
                        color: Colors.grey.shade800,
                      ),
                    ),

                    const SizedBox(height: 18),

                    // NAMA PRODUK
                    Text(
                      item["nama"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade900,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),

                    const SizedBox(height: 6),

                    // HARGA
                    Text(
                      "Rp ${item['harga']}",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
