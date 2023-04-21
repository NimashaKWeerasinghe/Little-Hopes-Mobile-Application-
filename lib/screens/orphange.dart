import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:littlehopes/payPal/paypalhome.dart';
import 'package:littlehopes/screens/NearOrphange/near_orphanage_screen.dart';
import 'package:littlehopes/screens/apply_adoption.dart';
import 'package:littlehopes/screens/give_donation.dart';
import 'package:littlehopes/screens/children_gallery.dart';
import 'package:littlehopes/screens/near_location.dart';

import 'package:littlehopes/screens/signin_screen.dart';
import 'package:littlehopes/screens/sponsor_child.dart';
import '../utils/color_utils.dart';

class OrphangeScreen extends StatefulWidget {
  const OrphangeScreen({super.key});

  @override
  _OrphangeScreenState createState() => _OrphangeScreenState();
}

class _OrphangeScreenState extends State<OrphangeScreen> {
  @override
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // PaypalHomeScreen(),

    GiveDonation(),
    ApplyAdoption(),
    ChidrenGallery(),
    //SponsorChild()
  ];

  Widget build(BuildContext) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 6,
              onTabChange: _navigateBottomBar,
              padding: EdgeInsets.all(16),
              tabs: [
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Orphange',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Gallery',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Donation',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Adoption',
                ),
              ],
              selectedIndex: _selectedIndex,
            ),
          ),
        ));
  }
}
