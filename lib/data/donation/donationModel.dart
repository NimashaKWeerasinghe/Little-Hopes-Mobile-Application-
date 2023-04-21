import 'package:cloud_firestore/cloud_firestore.dart';

class DonationModel {
  String dName;
  String dAge;
  String dGender;
  String dJob;
  String dMaritalStatus;
  String dWorkClass;
  String dRelationship;
  String dEdu;
  String dAmount;
  String dDate;

  DonationModel(
      {required this.dName,
      required this.dAge,
      required this.dGender,
      required this.dJob,
      required this.dMaritalStatus,
      required this.dWorkClass,
      required this.dRelationship,
      required this.dEdu,
      required this.dAmount,
      required this.dDate});
}
