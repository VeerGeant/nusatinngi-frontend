import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4CAF50), // Background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo or Icon Section
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.person_add, // Icon for registration
                      color: Color(0xFF4CAF50),
                      size: 60,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Title Section
                  const Text(
                    "Registrasi Akun",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Input Fields for Registration
                  _buildTextField("Nama", Icons.person),
                  const SizedBox(height: 10),
                  _buildTextField("Gender", Icons.transgender),
                  const SizedBox(height: 10),
                  _buildTextField("Tanggal Lahir", Icons.calendar_today),
                  const SizedBox(height: 10),
                  _buildTextField("Email", Icons.email),
                  const SizedBox(height: 10),
                  _buildTextField("Password", Icons.lock, obscureText: true),
                  const SizedBox(height: 30),

                  // Next Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle registration logic here
                      // You can navigate to the next page after successful registration
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                    ),
                    child: const Text(
                      'Selanjutnya',
                      style: TextStyle(fontSize: 18, color: Color(0xFF4CAF50)),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Back to Landing Page
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Go back to the landing page
                    },
                    child: const Text(
                      'Kembali ke Halaman Depan',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Custom Text Field Widget
  Widget _buildTextField(String label, IconData icon, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white),
        prefixIcon: Icon(
          icon,
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
