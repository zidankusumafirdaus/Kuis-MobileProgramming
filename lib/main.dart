import 'package:flutter/material.dart';
import 'screens/soal1_page.dart';
import 'screens/soal2_page.dart';
import 'screens/soal3_page.dart';
import 'screens/soal4_page.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GlobalKey<NavigatorState> _navigatorKey;

  @override
  void initState() {
    super.initState();
    _navigatorKey = GlobalKey<NavigatorState>();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard Kuis',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Poppins",
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0.5,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.grey.shade900,
          ),
        ),
      ),

      navigatorKey: _navigatorKey,
      initialRoute: '/',

      onGenerateRoute: (settings) {
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) {
            switch (settings.name) {
              case '/':
                return const LandingMenu();
              case '/soal1':
                return const Soal1Page();
              case '/soal2':
                return const Soal2Page();
              case '/soal3':
                return const Soal3Page();
              case '/soal4':
                return const Soal4Page();
              default:
                return const LandingMenu();
            }
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          },
        );
      },
    );
  }
}

// ==========================
// Landing Menu Elegant Modern
// ==========================
class LandingMenu extends StatelessWidget {
  const LandingMenu({super.key});

  final List<Map<String, dynamic>> menuItems = const [
    {
      "title": "Soal 1 – Grid Produk",
      "route": "/soal1",
      "icon": IconlyBold.category,
    },
    {
      "title": "Soal 2 – Profil Mahasiswa",
      "route": "/soal2",
      "icon": IconlyBold.profile,
    },
    {
      "title": "Soal 3 – Daftar Kontak",
      "route": "/soal3",
      "icon": IconlyBold.call,
    },
    {
      "title": "Soal 4 – Dashboard",
      "route": "/soal4",
      "icon": IconlyBold.graph,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Kuis UI/UX")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),

        child: ListView.separated(
          itemCount: menuItems.length,
          separatorBuilder: (_, __) => const SizedBox(height: 16),

          itemBuilder: (context, index) {
            final item = menuItems[index];

            return InkWell(
              borderRadius: BorderRadius.circular(30),
              splashColor: Colors.grey.shade300.withOpacity(0.4),

              onTap: () => Navigator.pushNamed(context, item["route"]),

              child: Container(
                padding: const EdgeInsets.all(20),

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

                child: Row(
                  children: [
                    // Icon Container
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        item["icon"],
                        size: 30,
                        color: Colors.grey.shade800,
                      ),
                    ),

                    const SizedBox(width: 20),

                    // Title
                    Expanded(
                      child: Text(
                        item["title"],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ),

                    // Arrow
                    Icon(
                      Icons.chevron_right_rounded,
                      size: 32,
                      color: Colors.grey.shade600,
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
