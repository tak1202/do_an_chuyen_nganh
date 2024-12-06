import 'package:bakery_shop/page/view_page.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function()?onTap;
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  const SignInButton({super.key, this.onTap, required this.userNameController, required this.passwordController});

  @override
  Widget build(BuildContext context) {
   return GestureDetector(
      onTap: () {
        String user = userNameController.text;
        String pass = passwordController.text;
        if (user.isEmpty || pass.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Vui lòng nhập tên và mật khẩu')),
          );
          return;
        } else if (user == 'admin' && pass == '123') {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Login Success')));
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const ViewPage()));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Login Failed')));
        }
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color(0xFFD89F68),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}