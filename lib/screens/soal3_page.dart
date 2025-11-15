import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Soal3Page extends StatefulWidget {
  const Soal3Page({super.key});

  @override
  State<Soal3Page> createState() => _Soal3PageState();
}

class _Soal3PageState extends State<Soal3Page> {
  bool isDark = false;

  final List<Map<String, dynamic>> kontak = [
    {"nama": "Zidan Kusuma", "telp": "0812-3456-7890", "status": "Online"},
    {"nama": "Ilham Arif", "telp": "0809-8765-4321", "status": "Offline"},
    {"nama": "Arinda", "telp": "0845-5678-9012", "status": "Away"},
  ];

  Color getStatus(String status) {
    switch (status) {
      case "Online":
        return Colors.greenAccent.shade400;
      case "Offline":
        return Colors.redAccent.shade200;
      case "Away":
        return Colors.amber.shade400;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = isDark ? const Color(0xFF0F0F0F) : Colors.white;
    final cardColor = isDark ? const Color(0xFF1A1A1A) : Colors.white;
    final borderColor = isDark ? Colors.grey.shade800 : Colors.grey.shade300;
    final textColor = isDark ? Colors.white : Colors.black87;
    final subTextColor = isDark ? Colors.grey.shade400 : Colors.grey.shade700;

    return Scaffold(
      backgroundColor: bgColor,

      appBar: AppBar(
        title: const Text("Soal 3 — Daftar Kontak"),
        backgroundColor: cardColor,
        elevation: 0.5,
        foregroundColor: textColor,
        actions: [
          Switch(
            value: isDark,
            activeColor: Colors.white,
            inactiveThumbColor: Colors.grey.shade700,
            onChanged: (v) => setState(() => isDark = v),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(18),
        itemCount: kontak.length,
        itemBuilder: (context, i) {
          final item = kontak[i];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(30),

              // Border adaptif dark/light
              border: Border.all(color: borderColor, width: 1.3),

              // Shadow adaptif dark/light
              boxShadow: [
                BoxShadow(
                  color: isDark
                      ? Colors.black.withOpacity(0.6)
                      : Colors.grey.shade300.withOpacity(0.45),
                  blurRadius: isDark ? 20 : 12,
                  offset: const Offset(0, 6),
                ),
              ],
            ),

            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                children: [
                  // AVATAR
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor: isDark
                            ? Colors.grey.shade900
                            : Colors.grey.shade200,
                        child: Icon(
                          IconlyBold.profile,
                          size: 28,
                          color: isDark
                              ? Colors.grey.shade200
                              : Colors.grey.shade800,
                        ),
                      ),

                      // STATUS DOT
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: getStatus(item["status"]),
                            shape: BoxShape.circle,
                            border: Border.all(color: cardColor, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 18),

                  // TEKS KONTAK
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item["nama"],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item["telp"],
                          style: TextStyle(color: subTextColor),
                        ),
                      ],
                    ),
                  ),

                  // TOMBOL CALL PREMIUM STYLE
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: borderColor, width: 1.2),

                      // shadow adaptif
                      boxShadow: [
                        BoxShadow(
                          color: isDark
                              ? Colors.black.withOpacity(0.5)
                              : Colors.grey.shade300.withOpacity(0.45),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Icon(IconlyBold.call, size: 24, color: textColor),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
