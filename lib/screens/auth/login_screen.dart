import 'package:flutter/material.dart';
import 'package:library_app/screens/auth/widgets/input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController rollNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/nsut.png",
                  width: 256,
                  height: 256,
                ),
                const SizedBox(height: 16),
                InputWidget(
                  hintText: "e.g. 2023UIT3033",
                  label: "Nsut Roll No.",
                  icon: Icons.person,
                  keyboardType: TextInputType.text,
                  controller: rollNoController,
                  validator: (String? value) => "",
                ),
                InputWidget(
                  hintText: "IMS password",
                  label: "Password",
                  icon: Icons.password,
                  keyboardType: TextInputType.text,
                  obscureToggleButton: true,
                  validator: (String? value) => "",
                  controller: passwordController,
                ),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            backgroundColor: Colors.blueAccent),
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
