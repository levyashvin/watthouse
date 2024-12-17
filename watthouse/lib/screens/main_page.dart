import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nearby EV Locations")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Map Placeholder\n(Imagine a map here!)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.ev_station, color: Colors.green),
            title: Text("Home EV Charger 1"),
            subtitle: Text("123 Main Street, Available"),
          ),
          ListTile(
            leading: Icon(Icons.ev_station, color: Colors.orange),
            title: Text("Home EV Charger 2"),
            subtitle: Text("456 Elm Street, In Use"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/registerLocation');
        },
        child: Icon(Icons.add_location),
        tooltip: "Register EV Location",
      ),
    );
  }
}
