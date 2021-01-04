import 'package:ecommerceapp/screens/otp/widgets/body.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key key}) : super(key: key);
  static final String routeName = "/otp_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification")),
      body: Body(),
    );
  }
}
