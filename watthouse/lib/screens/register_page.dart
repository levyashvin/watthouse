import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _phoneController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _verifyPhone() async {
    await _auth.verifyPhoneNumber(
      phoneNumber: _phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        print('Error: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        // Navigate to OTP verification page with verificationId
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: "Enter your phone number"),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _verifyPhone,
              child: Text("Verify"),
            ),
          ],
        ),
      ),
    );
  }
}
