import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class AdoptionService {
  //final String uid;
  AdoptionService();

  Future adoptionList() async {
    final QuerySnapshot result =
        await FirebaseFirestore.instance.collection("adoptions").get();

    final List<DocumentSnapshot> documents = result.docs;
    return documents;
  }

  Future saveAdoptions({
    String? fName,
    String? fAge,
    String? fEmail,
    String? fPhone,
    String? fJob,
    String? fIncome,
    String? mName,
    String? mAge,
    String? mEmail,
    String? mPhone,
    String? mJob,
    String? mIncome,
  }) async {
    try {
      return await FirebaseFirestore.instance
          .collection("adoptions")
          .doc()
          .set({
        "fName": fName,
        "fAge": fAge,
        "fEmail": fEmail,
        "fPhone": fPhone,
        "fJob": fJob,
        "fIncome": fIncome,
        "mName": mName,
        "mAge": mAge,
        "mEmail": mEmail,
        "mPhone": mPhone,
        "mJob": mJob,
        "mIncome": mIncome,
      });
    } on PlatformException catch (e) {
      return null;
    }
  }
}
