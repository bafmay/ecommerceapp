import 'package:ecommerceapp/screens/complete_profile/widget/profile_form.dart';
import 'package:ecommerceapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text("Complete Profile", style: headingStyle),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              ProfileForm(),
              SizedBox(height: getProportionateScreenWidth(30)),
              Text(
                "By continuing your confirm that you are agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
