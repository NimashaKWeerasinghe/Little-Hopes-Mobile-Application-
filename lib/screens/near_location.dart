import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:littlehopes/screens/signin_screen.dart';
import '../utils/color_utils.dart';
import 'package:geocoding/geocoding.dart';

class NearLocation extends StatefulWidget {
  const NearLocation({super.key});

  @override
  _NearLocationState createState() => _NearLocationState();
}

class _NearLocationState extends State<NearLocation> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        hexStringToColor("13165c"),
        hexStringToColor("6a60d1"),
        hexStringToColor("7d7eb5")
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: SingleChildScrollView(
        child: MaterialButton(
          onPressed: () async {},
          child: const Text('Donate'),
          color: Colors.blue,
          textColor: Colors.white,
          minWidth: 300,
          height: 50,
        ),
      ),
    ));
  }
}
