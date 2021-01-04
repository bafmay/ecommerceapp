import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/screens/sign_in/widgets/social_card.dart';
import 'package:ecommerceapp/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerceapp/widgets/no_account_text.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text("Welcome Back", style: headingStyle),
                Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
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
                NotAccountText(
                    press: () =>
                        Navigator.pushNamed(context, SignUpScreen.routeName)),
                SizedBox(height: getProportionateScreenHeight(20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
