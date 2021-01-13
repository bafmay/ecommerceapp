import 'package:ecommerceapp/enums.dart';
import 'package:ecommerceapp/screens/profile/widgets/body.dart';
import 'package:ecommerceapp/widgets/custom_bottom_menu.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);
  static final String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
