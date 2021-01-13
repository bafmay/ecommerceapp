import 'package:ecommerceapp/enums.dart';
import 'package:ecommerceapp/screens/home/widgets/body.dart';
import 'package:ecommerceapp/widgets/custom_bottom_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  static final routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
