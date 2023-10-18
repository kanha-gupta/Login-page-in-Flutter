import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello Again!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome back you’ve been missed!',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
              onPressed: () {},
              child: Text('Sign In', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            Text('Or continue with'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.mail_outline, size: 30),
                Icon(Icons.apple, size: 30),
                Icon(Icons.facebook, size: 30),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member? '),
                TextButton(
                  onPressed: () {},
                  child: Text('Register now', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
