import 'package:flutter/material.dart';

class RegisterLocationPage extends StatefulWidget {
  @override
  _RegisterLocationPageState createState() => _RegisterLocationPageState();
}

class _RegisterLocationPageState extends State<RegisterLocationPage> {
  final _addressController = TextEditingController();
  final _descriptionController = TextEditingController();

  void _submitLocation() {
    // Save the location to Firebase or another backend service
    print("Address: ${_addressController.text}");
    print("Description: ${_descriptionController.text}");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register EV Location")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _addressController,
              decoration: InputDecoration(labelText: "Enter address"),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: "Enter description"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitLocation,
              child: Text("Submit Location"),
            ),
          ],
        ),
      ),
    );
  }
}
