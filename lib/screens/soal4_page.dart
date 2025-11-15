import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Soal4Page extends StatelessWidget {
  const Soal4Page({super.key});

  final List<Map<String, dynamic>> categories = const [
    {"name": "Profil", "icon": IconlyBold.profile},
    {"name": "Kontak", "icon": IconlyBold.call},
    {"name": "Pesan", "icon": IconlyBold.message},
    {"name": "Pengaturan", "icon": IconlyBold.setting},
  ];

  final List<Map<String, dynamic>> activity = const [
    {
      "title": "Login berhasil",
      "subtitle": "Hari ini, 09:21",
      "icon": IconlyLight.unlock,
    },
    {
      "title": "Update profil",
      "subtitle": "Kemarin, 18:10",
      "icon": IconlyLight.profile,
    },
    {
      "title": "Mengubah password",
      "subtitle": "Kemarin, 11:32",
      "icon": IconlyLight.password,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Soal 4 — Dashboard"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 0.5,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // ============================
            // GRID CATEGORY — Elegant Centered
            // ============================
            Expanded(
              flex: 3,
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                ),
                itemBuilder: (context, index) {
                  final item = categories[index];

                  return InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("${item['name']} ditekan")),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.3,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300.withOpacity(0.45),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),

                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                item["icon"],
                                size: 38,
                                color: Colors.grey.shade800,
                              ),
                            ),

                            const SizedBox(height: 14),

                            Text(
                              item["name"],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // ============================
            // INFO CARD — Modern Elegant
            // ============================
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.shade300, width: 1.3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300.withOpacity(0.45),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      IconlyBold.infoSquare,
                      size: 35,
                      color: Colors.grey.shade800,
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Text(
                      "Selamat datang kembali! Semua sistem berjalan normal.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ============================
            // LIST AKTIVITAS TERAKHIR
            // ============================
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: activity.length,
                itemBuilder: (context, index) {
                  final item = activity[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1.3,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300.withOpacity(0.45),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),

                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),

                      leading: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          item["icon"],
                          size: 26,
                          color: Colors.grey.shade800,
                        ),
                      ),

                      title: Text(
                        item["title"],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                        ),
                      ),

                      subtitle: Text(
                        item["subtitle"],
                        style: TextStyle(color: Colors.grey.shade700),
                      ),

                      trailing: Icon(
                        Icons.chevron_right_rounded,
                        size: 32,
                        color: Colors.grey.shade600,
                      ),

                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Detail aktivitas: ${item['title']}"),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
