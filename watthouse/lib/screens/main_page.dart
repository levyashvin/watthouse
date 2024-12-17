import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late GoogleMapController mapController;
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      // Add demo markers
      _markers.add(
        Marker(
          markerId: MarkerId('1'),
          position: LatLng(37.7749, -122.4194), // Example coordinates
          infoWindow: InfoWindow(title: 'Home Charger'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nearby EV Locations")),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // Center map
          zoom: 12,
        ),
        markers: _markers,
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
