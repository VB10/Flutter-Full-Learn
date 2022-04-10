import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '303/lottie_learn.dart';
import 'product/constant/project_items.dart';
import 'product/global/theme_notifer.dart';
import 'product/inti/product_init.dart';
import 'product/navigator/navigator_custom.dart';
import 'product/navigator/navigator_manager.dart';
import 'package:provider/provider.dart';

import '404/compute/compute_learn.dart';

Future<void> main() async {
  final produtInit = ProductInit();
  await produtInit.init();
  runApp(
    EasyLocalization(
        supportedLocales: produtInit.localizationInit.supportedLocales,
        path: produtInit.localizationInit.localizationPath, // <-- change the path of the translation files
        child: MultiProvider(
          providers: produtInit.providers,
          builder: (context, child) => const MyApp(),
        )),
  );
}

class MyApp extends StatelessWidget with NavigatorCustom {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectItems.projectName,
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifer>().currentTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

      builder: (context, child) {
        return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1), child: child ?? const SizedBox());
      },

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

      // initialRoute: '/',
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) {
            return const LottieLearn();
          },
        );
      },
      // builder: (context,widget){

      // },
      // routes: NavigatorRoures().items,
      onGenerateRoute: onGenerateRoute,
      navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
      home: const ComputeLearnView(),
    );
  }
}
