import 'package:ecommerceapp/screens/sign_in/widgets/social_card.dart';
import 'package:ecommerceapp/screens/sign_up/widgets/signup_form.dart';
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
              Text("Register account", style: headingStyle),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    path: 'assets/icons/facebook-2.svg',
                    press: () {},
                  ),
                  SocialCard(
                    path: 'assets/icons/google-icon.svg',
                    press: () {},
                  ),
                  SocialCard(
                    path: 'assets/icons/twitter.svg',
                    press: () {},
                  )
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing our confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
            ],
          ),
        ),
      ),
    );
  }
}
