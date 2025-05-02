import 'package:flutter/material.dart';
import 'package:user_profile/utils/images.dart';
import 'package:user_profile/widgets/card_profile.dart';
import 'package:user_profile/widgets/app_bar.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  Map<String, String> get items => {
    'My Orders': 'Already have 10 orders',
    'My Addresses': '03 Addresses',
    'Payment Methods': 'you have 2 cards',
    'My Reviews': 'Reviews for 5 items',
    'Settings': 'Notifications, Password, FAQ, Contact',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        title: 'Profile',
        onSearchPressed: () {
          // Handle search action
        },
        onLogoutPressed: () {
          // Handle logout action
        },
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 50, backgroundImage: AssetImage(userImage)),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Nada Eltorgoman', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    const Text('nada@gmail.com', style: TextStyle(fontSize: 18)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            ListView.builder(
              itemBuilder: (context, index) {
                return CardProfile(title: items.keys.elementAt(index), description: items.values.elementAt(index));
              },
              itemCount: items.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}