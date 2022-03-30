import 'package:flutter/material.dart';

import '../demos/password_text_field.dart';

class ThemeLarnView extends StatefulWidget {
  const ThemeLarnView({Key? key}) : super(key: key);

  @override
  State<ThemeLarnView> createState() => _ThemeLarnViewState();
}

class _ThemeLarnViewState extends State<ThemeLarnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        const PasswordTextField(),
        CheckboxListTile(
          value: true,
          onChanged: (val) {},
          title: const Text('select'),
        )
      ]),
    );
  }
}
