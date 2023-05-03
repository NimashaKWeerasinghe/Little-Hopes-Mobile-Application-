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
                    height: 10,
                  ),
                  const Text(
                    'Family is Love ',
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(98, 6, 14, 126)),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'Prospective Adoptive Parent - Female Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    "assets/images/mom.png",
                    height: 350,
                    width: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: fName,
                        key: const Key("fName"),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Full Name",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: fAge,
                        key: const Key("fAge"),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Age",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: fEmail,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Email",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: fPhone,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Phone Number",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: fJob,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Occupation",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: fIncome,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Annual Income",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.money,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  const Text(
                    'Prospective Adoptive Parent - Male Details',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    "assets/images/dad.png",
                    height: 400,
                    width: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: mName,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Full Name",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: mAge,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Age",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.calendar_month,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: mEmail,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Email",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: mPhone,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Phone Number",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: mJob,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Occupation",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: mIncome,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Annual Income",
                          labelStyle: const TextStyle(
                              color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: const Icon(
                            Icons.money,
                            color: Color.fromARGB(255, 8, 7, 7),
                          ),
                          border: myinputborder(),
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder(),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _savingAdoptions();
                    },
                    child: const Text('Apply Adoption',
                        style: TextStyle(
                            color: Color.fromARGB(255, 22, 17, 17),
                            fontSize: 25)),
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      minimumSize: Size(100, 40),
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 32, 27, 26), width: 2),
                    ),
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

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return const OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(172, 16, 5, 5),
        width: 2.5,
      ));
}

OutlineInputBorder myfocusborder() {
  return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 15, 16, 15),
        width: 2.5,
      ));
}
