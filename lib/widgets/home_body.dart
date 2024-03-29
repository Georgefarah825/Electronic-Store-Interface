import 'package:electronicstore/constants.dart';
import 'package:electronicstore/models/pruducrt.dart';
import 'package:electronicstore/widgets/details/details_screen.dart';
import 'package:electronicstore/widgets/pruductCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeBody extends StatelessWidget {
  const homeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) => productCard(
                          itemIndex: index,
                          product: products[index],
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detailsScreen(
                                          product: products[index],
                                        )));
                          },
                        )),
              ],
            ))
          ],
        ));
  }
}
