import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class DonationService {
  //final String uid;
  DonationService();

  Future donationList() async {
    final QuerySnapshot result =
        await FirebaseFirestore.instance.collection("donations").get();

    final List<DocumentSnapshot> documents = result.docs;
    return documents;
  }

  Future saveDonations({
    String? dName,
    String? dAge,
    String? dGender,
    String? dJob,
    String? dMaritalStatus,
    String? dWorkClass,
    String? dRelationship,
    String? dEdu,
    String? dAmount,
    String? dDate,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("donations")
          .doc()
          .set({
        "dName": dName,
        "dAge": dAge,
        "dGender": dGender,
        "dJob": dJob,
        "dMaritalStatus": dMaritalStatus,
        "dWorkClass": dWorkClass,
        "dRelationship": dRelationship,
        "dEdu": dEdu,
        "dAmount": dAmount,
        "dDate": dDate
      });
    } on PlatformException catch (e) {
      return null;
    }
  }
}
