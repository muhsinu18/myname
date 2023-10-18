import 'package:flutter/material.dart';
import 'forgot_password.dart'; 

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 7, 117),
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const Text(
              'Login to Your Account',
              style: TextStyle(fontSize: 24),
            ),
           const SizedBox(height: 20),
           const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                
              },
                style: ButtonStyle(
           backgroundColor: MaterialStateProperty.all<Color>
                  (Color.fromARGB(255, 0, 0, 0)), 
                       ),

              
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all
              <Color>(Color.fromARGB(255, 231, 6, 6)), 
              ),
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
