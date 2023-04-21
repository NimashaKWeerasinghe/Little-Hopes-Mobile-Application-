import 'package:cloud_firestore/cloud_firestore.dart';

class AdoptionModel {
  String fName;
  String fAge;
  String fEmail;
  String fPhone;
  String fJob;
  String fIncome;

  String mName;
  String mAge;
  String mEmail;
  String mPhone;
  String mJob;
  String mIncome;

  AdoptionModel({
    required this.fName,
    required this.fAge,
    required this.fEmail,
    required this.fPhone,
    required this.fJob,
    required this.fIncome,
    required this.mName,
    required this.mAge,
    required this.mEmail,
    required this.mPhone,
    required this.mJob,
    required this.mIncome,
  });
}
