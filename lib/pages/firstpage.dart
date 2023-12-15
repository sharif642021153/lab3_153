import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 189, 240),
      appBar: AppBar(
        title: const Text("PungPing App"),
        backgroundColor: Color.fromARGB(255, 230, 82, 217),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your username.";
                }
                return null;
              },
              controller: _usernameCtrl,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 111, 43, 151))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 233, 5, 5))),
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password.";
                }
                return null;
              },
              obscureText: true,
              obscuringCharacter: "*",
              controller: _passwordCtrl,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 111, 43, 151))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 233, 5, 5))),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormKey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
