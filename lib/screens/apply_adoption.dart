import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:littlehopes/data/adoption/adoptionservice.dart';
import 'package:littlehopes/screens/signin_screen.dart';
import '../utils/color_utils.dart';

class ApplyAdoption extends StatefulWidget {
  const ApplyAdoption({super.key});

  @override
  _ApplyAdoptionState createState() => _ApplyAdoptionState();
}

class _ApplyAdoptionState extends State<ApplyAdoption> {
  final fName = TextEditingController();
  final fAge = TextEditingController();
  final fJob = TextEditingController();
  final fIncome = TextEditingController();
  final fEmail = TextEditingController();
  final fPhone = TextEditingController();

  final mName = TextEditingController();
  final mAge = TextEditingController();
  final mJob = TextEditingController();
  final mIncome = TextEditingController();
  final mEmail = TextEditingController();
  final mPhone = TextEditingController();

  @override
  Widget build(BuildContext) {
    return Scaffold(
        body: Center(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("4970e3"),
            hexStringToColor("9e99cf"),
            hexStringToColor("acade6")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: SingleChildScrollView(
                child: Column(children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Not a Donation, Little bit of Love',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Prospective Adoptive Parent - Female Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: fName,
                      key: Key("fName"),
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
                        labelText: 'Full Name',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Name',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: fAge,
                      key: Key("fAge"),
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
                        labelText: 'Age',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Age',
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
                      controller: fEmail,
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
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Email',
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
                      controller: fPhone,
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
                        labelText: 'Phone Number',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Phone Number',
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
                      controller: fJob,
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
                        labelText: 'Occupation',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Occupation',
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
                      controller: fIncome,
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
                        labelText: 'Annual Income',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Annual Income',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: 300,
                  ),
                  const Text(
                    'Prospective Adoptive Parent - Male Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: mName,
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
                        labelText: 'Full Name',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Full Name',
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
                      controller: mAge,
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
                        labelText: 'Age',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Age',
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
                      controller: mEmail,
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
                        labelText: 'Email',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Email',
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
                      controller: mPhone,
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
                        labelText: 'Phone Number',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Phone Number',
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
                      controller: mJob,
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
                        labelText: 'Occupation',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Occupation',
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
                      controller: mIncome,
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
                        labelText: 'Annual Income',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Annual Income',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: 300,
                  ),
                  MaterialButton(
                    onPressed: () {
                      _savingAdoptions();
                    },
                    child: const Text('Apply Adoption'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    minWidth: 300,
                    height: 50,
                  ),
                ]),
              ),
            ),
          )),
    ));
  }

  void _savingAdoptions() async {
    dynamic result = await AdoptionService().saveAdoptions(
      fName: fName.text,
      fAge: fAge.text,
      fEmail: fEmail.text,
      fPhone: fPhone.text,
      fJob: fJob.text,
      fIncome: fIncome.text,
      mName: mName.text,
      mAge: mAge.text,
      mEmail: mEmail.text,
      mPhone: mPhone.text,
      mJob: mJob.text,
      mIncome: mIncome.text,
    );

    fName.clear();
    fAge.clear();
    fJob.clear();
    fEmail.clear();
    fPhone.clear();
    fIncome.clear();

    mName.clear();
    mAge.clear();
    mJob.clear();
    mEmail.clear();
    mPhone.clear();
    mIncome.clear();
  }
}
