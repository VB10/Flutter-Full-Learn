import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '101/color_learn.dart';
import 'demos/note_demos_view.dart';

void main() {
  runApp(const MyApp()); //ALI DAYI
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          errorColor: ColorsItems.sulu,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const NoteDemos(),
    );
  }
}
