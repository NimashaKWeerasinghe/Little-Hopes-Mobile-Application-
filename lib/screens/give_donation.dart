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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dName,
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
                        hintText: 'Enter Your Name',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dAge,
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
                        hintText: 'Enter Your Age',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromARGB(255, 5, 43, 73)),
                      )),
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
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromARGB(255, 5, 43, 73)),
                      )),
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
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromARGB(255, 5, 43, 73)),
                      )),
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
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromARGB(255, 5, 43, 73)),
                      )),
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
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dJob,
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
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                            width: 1.5, color: Color.fromARGB(255, 5, 43, 73)),
                      )),
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
                    height: 30,
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: dAmount,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 5, 43, 73),
                                width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5,
                                color: Color.fromARGB(255, 10, 57, 96))),
                        labelText: 'Amount of Donation',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Amount of Donation ',
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
                      controller: dDate,
                      keyboardType: TextInputType.datetime,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 5, 43, 73),
                                width: 1.5)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1.5,
                                color: Color.fromARGB(255, 10, 57, 96))),
                        labelText: 'Date',
                        labelStyle:
                            TextStyle(color: Color.fromARGB(255, 25, 26, 26)),
                        hintText: 'Enter Date',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    width: 300,
                  ),
                  MaterialButton(
                    onPressed: () {
                      _savingDonations();
                    },
                    child: const Text('Donate'),
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
