import 'package:c_market_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('home screen appbar(index:0)'),
        ),
        body: Container(
          color: Colors.orange[100],
          child: Center(
            child: Text(
              'homeScreen',
              style: textTheme().headline2,
              ),
          ),
        ));
  }
}
