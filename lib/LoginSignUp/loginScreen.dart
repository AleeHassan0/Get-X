import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/LoginSignUp/loginController.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  Logincontroller logincontroller = Get.put(Logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: logincontroller.emailController.value,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
            TextFormField(
              controller: logincontroller.passwordController.value,
              decoration: const InputDecoration(hintText: 'Password'),
            ),
            const SizedBox(
              height: 40,
            ),
            Obx(() {
              return InkWell(
                onTap: () {
                  logincontroller.loginApi();
                },
                child: Container(
                  height: 44,
                  color: Colors.grey,
                  child: logincontroller.loading.value
                      ? const CircularProgressIndicator()
                      : const Center(child: Text('Login')),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
