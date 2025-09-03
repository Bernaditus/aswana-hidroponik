import 'package:flutter/material.dart';
// import 'package:platrack/widget/custom_input.dart';
import 'package:get/get.dart';
// import 'package:platrack/screen/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header Section
            Container(
              width: double.infinity,
              height: screenHeight * 0.55, // langsung pakai screenHeight
              child: Stack(
                children: [
                  ClipPath(
                    clipper: BackgroundClipper(),
                    child: Container(
                      width: double.infinity,
                      height: screenHeight * 0.44,
                      color: const Color.fromARGB(255, 248, 154, 59),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.02,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'KONYAYUR',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 40, 139, 60),
                          fontSize: 48,
                          fontFamily: 'Exo 2',
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              color: Colors.black.withOpacity(0.25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   bottom: 0,
                  //   left: 0,
                  //   right: 0,
                  //   child: Center(
                  //     child: Image.asset(
                  //       'assets/images/Truck delivery service.gif',
                  //       width: screenWidth.clamp(280, 450),
                  //       fit: BoxFit.contain,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),

            // Content Section
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth <= 640 ? 20 : 37,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Selamat datang,',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.67),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Login untuk melanjutkan',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.67),
                      fontFamily: 'Nunito Sans',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  // Username Input
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'contoh: aswama',
                      labelStyle: const TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(
                        color:
                            Colors
                                .black54, // sedikit lebih gelap supaya tetap kelihatan
                        fontFamily: 'Nunito Sans',
                        fontSize: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 245, 142, 39),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 245, 142, 39),
                          width: 1,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                    ),
                  ),
                  // CustomInputField(
                  //   controller: _usernameController,
                  //   label: 'username',
                  //   placeholder: 'contoh: canggih',
                  // ),
                  const SizedBox(height: 22),
                  TextField(
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Sandi',
                      hintText: 'Contoh: aswana123',
                      labelStyle: const TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Nunito Sans',
                        fontSize: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 245, 142, 39),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 245, 142, 39),
                          width: 1,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color.fromARGB(255, 245, 142, 39),
                          size: 24,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ),
                  ),

                  // Password Input
                  // CustomInputField(
                  //   controller: _passwordController,
                  //   label: 'sandi',
                  //   placeholder: 'contoh: canggih',
                  //   isPassword: true,
                  //   isPasswordVisible: _isPasswordVisible,
                  //   onTogglePassword: () {
                  //     setState(() {
                  //       _isPasswordVisible = !_isPasswordVisible;
                  //     });
                  //   },
                  // ),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        // Handle forgot password
                      },
                      child: Text(
                        'lupa kata sandi?',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 245, 142, 39),
                          fontFamily: 'Nunito Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.05),
                  ElevatedButton(
                    onPressed: () {
                      // // Handle login
                      // Get.to(DashboardScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 245, 142, 39),
                      minimumSize: const Size(double.infinity, 53),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.67),
                        fontFamily: 'Nunito Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// CustomClipper untuk membuat background hijau dengan lengkungan bawah
class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50); // Mulai dari kiri bawah
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0); // Tarik garis ke atas
    path.close();
    return path;
  } // Tutup getClip

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false; // Tidak perlu di-reclip
} // Tutup class BackgroundClipper
