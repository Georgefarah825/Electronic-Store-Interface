
import 'package:electronicstore/constants.dart';
import 'package:electronicstore/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text('مرحبا بكم بمتجر الالكتروني'),
        centerTitle: false,
        actions: [IconButton(onPressed: null, icon: Icon(Icons.menu))],
      ),
      body: homeBody(),
    );
  }
}
