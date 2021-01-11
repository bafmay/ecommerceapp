import 'package:ecommerceapp/screens/detail/widgets/body.dart';
import 'package:ecommerceapp/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_appbar.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);
  static String routeName = "/detail";

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}
