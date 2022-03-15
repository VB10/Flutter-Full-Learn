import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          Card(
            margin: ProjectMargins.cardMargin,
            child: const SizedBox(
              height: 100,
              width: 300,
              child: Center(child: Text('Ali')),
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          _CustomCard(
              child: const SizedBox(
            height: 100,
            width: 300,
            child: Center(child: Text('Ali')),
          ))
        ],
      ),
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
  static final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));
}

// Borders
//  StadiumBorder(),CircleBorder(),RoundedRectangeBorder()

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder = RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      child: child,
    );
  }
}
