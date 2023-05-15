import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:littlehopes/screens/signin_screen.dart';
import '../utils/color_utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChidrenGallery extends StatefulWidget {
  ChidrenGallery({super.key});

  @override
  _ChidrenGalleryState createState() => _ChidrenGalleryState();
}

class _ChidrenGalleryState extends State<ChidrenGallery> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('orphans').snapshots();
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        hexStringToColor("13165c"),
        hexStringToColor("6a60d1"),
        hexStringToColor("7d7eb5")
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: StreamBuilder<QuerySnapshot>(
            stream: _usersStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }

              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return ListTile(
                    title: Text(data['fullName']),
                    subtitle: Text(data['odob']),
                    leading: Image.network(
                      data['img'],
                      height: 100,
                      width: 80,
                    ),
                    trailing: MaterialButton(
                      onPressed: () {},
                      child: Text(data['oStatus']),
                      color: Colors.blue,
                      textColor: Colors.white,
                      minWidth: 30,
                      height: 25,
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
