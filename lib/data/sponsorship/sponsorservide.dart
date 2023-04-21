import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class SponsorService {
  //final String uid;
  SponsorService();

  Future sponsorList() async {
    final QuerySnapshot result =
        await FirebaseFirestore.instance.collection("sponsorships").get();

    final List<DocumentSnapshot> documents = result.docs;
    return documents;
  }

  Future saveSponsor({
    String? childId,
    String? childName,
    String? sName,
    String? sEmail,
    String? sponsorTime,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("sponsorships")
          .doc()
          .set({
        "childId": childId,
        "childName": childName,
        "sName": sName,
        "sEmail": sEmail,
        "sponsorTime": sponsorTime,
        "staring": DateTime.now(),
      });
    } on PlatformException catch (e) {
      return null;
    }
  }
}
