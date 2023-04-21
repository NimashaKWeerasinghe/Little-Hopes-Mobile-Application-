import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:littlehopes/screens/signin_screen.dart';
import '../utils/color_utils.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:littlehopes/data/sponsorship/sponsorservide.dart';

class SponsorChild extends StatefulWidget {
  const SponsorChild({super.key});

  @override
  _SponsorChildState createState() => _SponsorChildState();
}

class _SponsorChildState extends State<SponsorChild> {
  String dropdownsponserTime = 'Select Sponsor Plan';

  var sponserTimeDroip = [
    'Select Sponsor Plan',
    '3 Months - 20 000 LKR',
    '6 Months - 40 000 LKR',
    '12 Months - 80 000 LKR',
  ];

  final childName = TextEditingController();
  final childId = TextEditingController();
  final sName = TextEditingController();
  final sEmail = TextEditingController();

  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Back to Gallery',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          title: const Text('Sponsor Child'),
        ),
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
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                  width: 300,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/child.jpg'),
                ),
                const SizedBox(
                  height: 30,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: childName,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 5, 43, 73),
                              width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5,
                              color: Color.fromARGB(255, 10, 57, 96))),
                      labelText: 'Full Name of Child',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                      hintText: 'Full Name of Child',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: childId,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 5, 43, 73),
                              width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5,
                              color: Color.fromARGB(255, 10, 57, 96))),
                      labelText: 'ID of Child',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                      hintText: 'ID of Child',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: sName,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 5, 43, 73),
                              width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5,
                              color: Color.fromARGB(255, 10, 57, 96))),
                      labelText: 'Full Name of Sponsor',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                      hintText: 'Full Name of Sponsor',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: sEmail,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 5, 43, 73),
                              width: 1.5)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.5,
                              color: Color.fromARGB(255, 10, 57, 96))),
                      labelText: 'Email of Sponsor',
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                      hintText: 'Email of Sponsor',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                          width: 1.5, color: Color.fromARGB(255, 5, 43, 73)),
                    )),
                    isExpanded: true,
                    value: dropdownsponserTime,
                    items: sponserTimeDroip.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownsponserTime = newValue!;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                  width: 300,
                ),
                MaterialButton(
                  onPressed: () {
                    _savingSponsor();
                  },
                  child: const Text('Sponsor'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 50,
                ),
              ],
            ),
          ),
        ));
  }

  void _savingSponsor() async {
    dynamic result = await SponsorService().saveSponsor(
      childId: childId.text,
      childName: childName.text,
      sName: sName.text,
      sEmail: sEmail.text,
      sponsorTime: dropdownsponserTime,
    );
  }
}
