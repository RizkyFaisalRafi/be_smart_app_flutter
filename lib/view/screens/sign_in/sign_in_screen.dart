import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/eva.dart';

import '../../../util/theme.dart';
import '../forgot_password/forgot_pass_screen.dart';
import '../home_screen/home_screen.dart';
import '../sign_up/sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    bool obscureText = true;

    void toggleObscureText() {
      obscureText = !obscureText;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Form
                  Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/be_smart_logo.png',
                          width: 200,
                          height: 200,
                        ),

                        const SizedBox(
                          height: 28,
                        ),

                        // Email
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email tidak boleh kosong!';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                              borderSide: BorderSide(
                                color: Color(0XFF7CA153),
                              ),
                            ),
                            label: Text(
                              'Email',
                              style: GoogleFonts.poppins(
                                  fontWeight: reguler, color: Colors.black),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 20,
                        ),

                        // Password
                        TextFormField(
                          obscureText: obscureText,
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password tidak boleh kosong!';
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: blackColor),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                              borderSide: BorderSide(
                                color: Color(0XFF7CA153),
                              ),
                            ),
                            label: Text(
                              'Password',
                              style: GoogleFonts.poppins(
                                  fontWeight: reguler, color: blackColor),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12),
                              ),
                            ),
                            suffixIcon: IconButton(
                              icon: Iconify(
                                obscureText
                                    ? Eva.eye_off_outline
                                    : Eva.eye_outline,
                                color: obscureText
                                    ? greyColor
                                    : const Color(0XFF7CA153),
                              ),
                              onPressed: () {
                                toggleObscureText();
                              },
                            ),
                            focusColor: const Color(0XFF7CA153),
                            fillColor: whiteColor,
                            filled: true,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Forgot Pass
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ForgotPassScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Lupa Password?',
                          style: GoogleFonts.poppins(
                            color: const Color(0XFF004AAD),
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 28,
                  ),

                  /// Footer
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF004AAD),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () {
                        // Go To HomePage
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                          fontWeight: bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Belum punya akun?',
                        style: GoogleFonts.poppins(
                          fontWeight: reguler,
                          fontSize: 12,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context,
                              MaterialPageRoute(
                            builder: (context) {
                              return const SignUpScreen();
                            },
                          ), (route) => false);
                        },
                        child: Text(
                          'Daftar',
                          style: GoogleFonts.poppins(
                            fontWeight: bold,
                            fontSize: 12,
                            color: const Color(0XFF004AAD),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
