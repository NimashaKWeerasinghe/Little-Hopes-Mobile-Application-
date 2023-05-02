import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:geolocator/geolocator.dart';
import 'package:littlehopes/screens/signin_screen.dart';
import 'package:units_converter/models/extension_converter.dart';
import 'package:units_converter/properties/length.dart';
import '../utils/color_utils.dart';
import 'package:geocoding/geocoding.dart';

class NearLocation extends StatefulWidget {
  const NearLocation({super.key});

  @override
  _NearLocationState createState() => _NearLocationState();
}

class _NearLocationState extends State<NearLocation> {
  final geo = GeoFlutterFire();
  final _firestore = FirebaseFirestore.instance;

  var lat = 6.9271;
  var long = 79.8612;

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext) {
    GeoFirePoint center = geo.point(latitude: lat, longitude: long);
// get the collection reference or query
    var collectionReference = _firestore.collection('orphangaeLocation');
    double radius = 15; //1km
    String field = 'g';

    Stream<List<DocumentSnapshot>> streamOfNearby = geo
        .collection(collectionRef: collectionReference)
        .within(center: center, radius: radius, field: field);

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
      child: StreamBuilder<List<DocumentSnapshot>>(
          stream: streamOfNearby,
          builder: (context, AsyncSnapshot<List<DocumentSnapshot>> snapshot) {
            if (!snapshot.hasData) {
              return Container(
                child: Text('No data'),
              );
            }
            return SingleChildScrollView(
                child: Column(children: [
              Center(
                child: MaterialButton(
                  onPressed: () async {
                    Position position = await _getGeoLocationPosition();
                    lat = position.latitude;
                    long = position.longitude;
                    print(lat);
                  },
                  child: const Text('Donate'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 50,
                ),
              ),
              Container(
                height: 500,
                width: 500,
                child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: ((context, index) {
                      DocumentSnapshot data = snapshot.data![index];
                      GeoPoint documentLocation = data.get('g')['geopoint'];
                      var distanceInMeters = Geolocator.distanceBetween(
                          center.latitude,
                          center.longitude,
                          documentLocation.latitude,
                          documentLocation.longitude);
                      return ListTile(
                        title: Text('${data.get('orphangeName')}'),
                        subtitle: Text(
                            '${distanceInMeters.convertFromTo(LENGTH.meters, LENGTH.kilometers)!.toStringAsFixed(2)} KM'),
                      );
                    })),
              )
            ]));
          }),
    ));
  }
}
