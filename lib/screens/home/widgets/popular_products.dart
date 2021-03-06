import 'package:ecommerceapp/models/Product.dart';
import 'package:ecommerceapp/screens/detail/detail_screen.dart';
import 'package:ecommerceapp/widgets/product_card.dart';
import 'package:ecommerceapp/widgets/rounded_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Products",
          press: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCart(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailScreen.routeName,
                    arguments:
                        ProductDetailArguments(product: demoProducts[index]),
                  ),
                ),
              ),
              SizedBox(width: getProportionateScreenWidth(20))
            ],
          ),
        ),
      ],
    );
  }
}
