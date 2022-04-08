import 'package:flutter/material.dart';

class NavigateHomeDetail extends StatefulWidget {
  const NavigateHomeDetail({Key? key, this.id}) : super(key: key);
  final String? id;

  @override
  State<NavigateHomeDetail> createState() => _NavigateHomeDetailState();
}

class _NavigateHomeDetailState extends State<NavigateHomeDetail> {
  String? _id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _id = widget.id;

    if (_id == null) {
      Future.microtask(() {
        final _modelId = ModalRoute.of(context)?.settings.arguments;
        // if (_modelId is String) {
        //   _id = _modelId;
        // } else {
        //   _id = widget.id;
        // }

        setState(() {
          _id = _modelId is String ? _modelId : widget.id;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).errorColor,
      appBar: AppBar(
        title: Text(_id ?? ''),
      ),
    );
  }
}
