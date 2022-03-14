import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              child: Text(
            'data',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Theme.of(context).errorColor),
          )),
        ],
      ),
    );
  }
}

class ColorsItems {
  static const Color porchase = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
