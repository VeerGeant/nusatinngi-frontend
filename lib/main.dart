import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Import file HomePage
import 'pages/profil.dart'; // Import file ProfilePage
import 'pages/chat_bot.dart';
import 'pages/landing_page.dart'; // Import file LandingPage
import 'pages/login_page.dart'; // Import file LoginPage
import 'pages/registration_page.dart'; // Import file RegisterPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Halaman awal saat aplikasi dijalankan
      routes: {
        '/': (context) => LandingPage(), // Landing Page sebagai halaman awal
        '/login': (context) => LoginPage(), // Halaman Login
        '/register': (context) => RegistrationPage(), // Halaman Registrasi
        '/main': (context) => MainPage(), // Halaman utama dengan navigasi
      },
    );
  }
}

// Main Page dengan Bottom Navigation
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  // List halaman untuk navigasi
  final List<Widget> _pages = [
    HomePage(),
    ChatBotPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Menampilkan halaman sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'ChatBot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
