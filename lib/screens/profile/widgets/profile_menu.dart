import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(title, style: Theme.of(context).textTheme.bodyText1),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
