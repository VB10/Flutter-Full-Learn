import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';

import '202/form_learn_view.dart';

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
      theme: LighTheme().theme,

      //  ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.white,
      //       unselectedLabelColor: Colors.red,
      //       indicatorSize: TabBarIndicatorSize.label,
      //     ),
      //     bottomAppBarTheme: const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //     progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
      //     listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      //     errorColor: ColorsItems.sulu,
      //     textSelectionTheme: const TextSelectionThemeData(
      //         selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),
      //     inputDecorationTheme: const InputDecorationTheme(
      //         filled: true,
      //         fillColor: Colors.white,
      //         iconColor: Colors.red,
      //         labelStyle: TextStyle(color: Colors.lime),
      //         border: OutlineInputBorder(),
      //         floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
      //     textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
      //     appBarTheme: const AppBarTheme(
      //       centerTitle: true,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //     )),
      home: const FormLearnView(),
    );
  }
}
