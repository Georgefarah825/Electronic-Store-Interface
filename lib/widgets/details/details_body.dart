import 'package:electronicstore/constants.dart';
import 'package:electronicstore/models/pruducrt.dart';
import 'package:electronicstore/widgets/details/pruduct_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colordot.dart';

class deatailsbody extends StatelessWidget {
  const deatailsbody({Key? key, required this.product}) : super(key: key);

  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            children: [
              Center(
                  child: pruductimage(
                size: size,
                image: product.image,
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    colordot(
                      fillcolor: kTextLightColor,
                      isselected: true,
                    ),
                    colordot(
                      fillcolor: Colors.blue,
                      isselected: false,
                    ),
                    colordot(
                      fillcolor: Colors.red,
                      isselected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                'السعر : ${product.price}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.2, vertical: kDefaultPadding / 2),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 19),
          ),
        )
      ],
    );
  }
}
