import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          title: "My Account",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Bell.svg",
          title: "Notifications",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Question mark.svg",
          title: "Settings",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/User Icon.svg",
          title: "Help Center",
          press: () {},
        ),
        ProfileMenu(
          icon: "assets/icons/Log out.svg",
          title: "Log Out",
          press: () {},
        ),
      ],
    );
  }
}
