import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Padding(
        padding: const EdgeInsets.only(top: 300,left: 45, right: 45),
        child: Center(
          child: Column(
            children: [
              TextField(decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "UserName"              
              )),
              SizedBox(height: 15),
               TextField(decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: "Password",
              ),
              ),
              SizedBox(height: 15),
              ElevatedButton(onPressed: (){}, child: Text('Login',),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary : Colors.white,
                fixedSize: Size.fromWidth(500)),
                ),
                SizedBox(height: 10),
                Text('Forgot password?', 
                style: TextStyle(color: Colors.blue),
                )
            ],
          ),
        ),
          ),
        );
  }
}