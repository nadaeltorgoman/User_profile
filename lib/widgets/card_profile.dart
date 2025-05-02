import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final String title;
  final String description;
  const CardProfile({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 2),
                Text(description, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w100)),
              ],
            ),
            Column(children: [IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))]),
          ],
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
