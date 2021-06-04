import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildAppBar(),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                buildTextField(
                    icon: Icons.email,
                    text: 'Enter Your Email',
                    isVisible: true),
                buildTextField(
                    icon: Icons.security,
                    text: 'Enter Your Password',
                    isVisible: false),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextField({IconData icon, String text, bool isVisible}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: !isVisible,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(9),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.elliptical(130, 40),
        ),
      ),
    );
  }
}
