import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:littlehopes/data/donation/donationservice.dart';
import 'package:littlehopes/screens/home_screen.dart';
//import 'package:littlehopes/screens/payment.dart';
import 'package:littlehopes/screens/signin_screen.dart';
import '../utils/color_utils.dart';
import 'package:littlehopes/payPal/payment.dart';

class GiveDonation extends StatefulWidget {
  const GiveDonation({super.key});

  @override
  _GiveDonationState createState() => _GiveDonationState();
}

class _GiveDonationState extends State<GiveDonation> {
  String dropdownvaluegender = 'Select Your Gender';
  String dropdownvaluemarital = 'Select Your Marital Status';
  String dropdownvalueedu = 'Select Education Status';
  String dropdownvaluerelation = 'Select Relationship Status';
  String dropdownvaluework = 'Select Work Class';

  // List of items in our dropdown menu
  var genderDrop = [
    'Select Your Gender',
    'Female',
    'Male',
  ];

  var maritalDrop = [
    'Select Your Marital Status',
    'Never-Married',
    'Married',
    'Divorced',
    'Widowed'
  ];

  var eduDrop = [
    'Select Education Status',
    '5th-11th',
    '11th-13th',
    'Bachelors',
    'Masters',
    'Doctorate'
  ];

  var relationDrop = [
    'Select Relationship Status',
    'Not-in-family',
    'Unmarried',
    'Own-child',
    'Wife',
    'Husband',
    'Other-relative'
  ];

  var workDrop = [
    'Select Work Class',
    'Private',
    'Government',
    'Semi-government',
    'Self-employee',
    'Never-worked'
  ];

  final dName = TextEditingController();
  final dAge = TextEditingController();
  final dJob = TextEditingController();
  final dAmount = TextEditingController();
  final dDate = TextEditingController();

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
                    height: 20,
                  ),
                  const Text(
                    'Not a Donation, Little bit of Love',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(
                    "assets/images/donation1.png",
                    height: 400,
                    width: 400,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                        controller: dName,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Username",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: Icon(
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
                        controller: dAge,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Age",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 7, 3, 4)),
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
                      controller: dJob,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 15, 12, 12)),
                        labelText: "Date of Birth",
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 7, 3, 4)),
                        prefixIcon: Icon(
                          Icons.calendar_month,
                          color: Color.fromARGB(255, 8, 7, 7),
                        ),
                        border: myinputborder(),
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: dAmount,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Amount of Donation",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: Icon(
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                        controller: dDate,
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 15, 12, 12)),
                          labelText: "Date",
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 7, 3, 4)),
                          prefixIcon: Icon(
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
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                      isExpanded: true,
                      value: dropdownvaluegender,
                      items: genderDrop.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvaluegender = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        enabledBorder: myinputborder(),
                        focusedBorder: myfocusborder(),
                      ),
                      isExpanded: true,
                      value: dropdownvaluemarital,
                      items: maritalDrop.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvaluemarital = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder()),
                      isExpanded: true,
                      value: dropdownvalueedu,
                      items: eduDrop.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalueedu = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder()),
                      isExpanded: true,
                      value: dropdownvaluerelation,
                      items: relationDrop.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvaluerelation = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: myinputborder(),
                          focusedBorder: myfocusborder()),
                      isExpanded: true,
                      value: dropdownvaluework,
                      items: workDrop.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvaluework = newValue!;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: 300,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _savingDonations();
                    },
                    child: const Text('Give Donation',
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
                  )
                ]),
              ),
            ),
          )),
    ));
  }

  void _savingDonations() async {
    dynamic result = await DonationService()
        .saveDonations(
          dName: dName.text,
          dAge: dAge.text,
          dGender: dropdownvaluegender,
          dJob: dJob.text,
          dWorkClass: dropdownvaluework,
          dAmount: dAmount.text,
          dDate: dDate.text,
          dMaritalStatus: dropdownvaluemarital,
          dRelationship: dropdownvaluerelation,
          dEdu: dropdownvalueedu,
        )
        .then((value) => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => Payment(
                  onFinish: (number) async {
                    // payment done
                    final snackBar = SnackBar(
                      content: const Text("Payment done Successfully"),
                      duration: const Duration(seconds: 5),
                      action: SnackBarAction(
                        label: 'Close',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ),
            ));
  }
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(172, 16, 5, 5),
        width: 2.5,
      ));
}

OutlineInputBorder myfocusborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 15, 16, 15),
        width: 2.5,
      ));
}

  //create a function like this so that you can use it wherever you want
