import 'package:electronicstore/constants.dart';
import 'package:electronicstore/models/pruducrt.dart';
import 'package:electronicstore/widgets/details/details_body.dart';
import 'package:flutter/material.dart';

class detailsScreen extends StatelessWidget {
  const detailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(right: kDefaultPadding),
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: false,
        title: Text(
          'رجوع',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
      body: deatailsbody(
        product: product,
      ),
    );
  }
}
