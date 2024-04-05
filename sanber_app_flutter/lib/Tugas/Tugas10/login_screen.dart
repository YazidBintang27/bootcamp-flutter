import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Tugas/Tugas10/home_screen.dart';
import 'package:sanber_app_flutter/Tugas/Tugas10/widgets/form_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              const ClipRRect(
                child: Image(
                  image: AssetImage("assets/images/flutter_logo.png"),
                  fit: BoxFit.cover,
                  width: 100,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "SanberApp",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.grey[700]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              const FormWidget(
                label: "Email",
                icon: Icons.email,
              ),
              const FormWidget(
                label: "Password",
                icon: Icons.key,
              ),
              const SizedBox(
                height: 8,
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Get.to(() => const HomeScreen());
                  });
                },
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue.shade500),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
