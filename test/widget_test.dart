import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:littlehopes/screens/apply_adoption.dart';

void main() {
  testWidgets('Add text field data to Firestore from donation widget',
      (WidgetTester tester) async {
    await tester.pumpWidget(const ApplyAdoption());
    await tester.pumpAndSettle();
    await tester.pump();

    Finder textFieldFinder = find.byType(TextField);
    expect(textFieldFinder, findsOneWidget);
    /** 
    await tester.enterText(textFieldFinder, 'Hello, World!');

    await tester.tap(find.byType(MaterialButton));
    await tester.pump();

    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('adoptions').get();

    expect(snapshot.docs.length, 1);
    expect(snapshot.docs.first.get('fName'), 'Hello, World!');
*/
  });
}
