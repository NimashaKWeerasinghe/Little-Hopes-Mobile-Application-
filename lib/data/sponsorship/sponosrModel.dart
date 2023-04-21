import 'package:cloud_firestore/cloud_firestore.dart';

class DonationModel {
  String childId;
  String childName;
  String sName;
  String sEmail;
  String sponsorTime;

  DonationModel({
    required this.childId,
    required this.childName,
    required this.sName,
    required this.sEmail,
    required this.sponsorTime,
  });
}
