import 'package:flutter/material.dart';
import '../101/list_view_learn.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({Key? key}) : super(key: key);

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with ProductSheetMixin {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      body: Center(
          child: TextButton(
              onPressed: () {
                showCustomSheet(context, const ListViewLearn());
              },
              child: const Text('Show'))),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              builder: (context) {
                return _CustomSheet(backgroundColor: _backgroundColor);
              });
          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
    required Color backgroundColor,
  }) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.white;
  final _gripHeight = 30.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: _gripHeight,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Divider(
                  color: Colors.black26,
                  thickness: 3,
                  indent: MediaQuery.of(context).size.width * 0.45,
                  endIndent: MediaQuery.of(context).size.width * 0.45,
                ),
                Positioned(
                    right: 10,
                    top: 0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.close),
                      ),
                    ))
              ],
            ),
          ),
          const Text('data22'),
          Image.network('https://picsum.photos/200', height: 200),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _backgroundColor = Colors.amber;
                });
                Navigator.of(context).pop<bool>(true);
              },
              child: const Text('OK'))
        ],
      ),
    );
  }
}

//
mixin ProductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
        context: context,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return _CustomMainSheet(child: child);
        });
  }
}

class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [const _BaseSheetHeader(), Expanded(child: child)],
      ),
    );
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({
    Key? key,
  })  : _gripHeight = 30,
        super(key: key);

  final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Divider(
            color: Theme.of(context).colorScheme.onBackground,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              top: 0,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: PAddingManager.paddingLowAll,
                  child: Icon(Icons.close),
                ),
              ))
        ],
      ),
    );
  }
}

class PAddingManager {
  static const paddingLowAll = EdgeInsets.all(8.0);
}
