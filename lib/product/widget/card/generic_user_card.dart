import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/generic_learn.dart';

class GenericUserCard extends StatelessWidget {
  const GenericUserCard({Key? key, required this.model}) : super(key: key);
  final GenericUser model;
  @override
  Widget build(BuildContext context) {
    return Text(model.name);
  }
}
