import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        myProfilePhoto(),
        const SizedBox(
          height: 12,
          width: double.infinity,
        ),
        myName(name: "King Rayhan", tagName: "Full Stack Developer", gap: 12),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 20,
        ),
        contactInfoBox(
          title: "king_rayhan",
          iconLocation: "lib/assets/instagram.svg",
        ),
        SizedBox(
          height: 12,
        ),
        contactInfoBox(
          title: "kingrayhan",
          iconLocation: "lib/assets/github.svg",
        ),
      ],
    );
  }

  Container contactInfoBox({
    required String title,
    required String iconLocation,
  }) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 4,
      ),
      child: ListTile(
        leading: SvgPicture.asset(iconLocation),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  CircleAvatar myProfilePhoto() {
    return const CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage('lib/assets/me.jpg'),
    );
  }

  Column myName({
    required String name,
    required String tagName,
    double gap = 4,
  }) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'Silkscreen',
          ),
        ),
        SizedBox(height: gap),
        Text(
          tagName.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 35,
          width: 120,
          child: Divider(color: Colors.white38),
        ),
      ],
    );
  }
}
