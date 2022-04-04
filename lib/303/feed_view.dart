import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_service.dart';

import '../202/service/post_model.dart';

class FeedView extends StatefulWidget {
  const FeedView({Key? key}) : super(key: key);

  @override
  State<FeedView> createState() => _FeedViewState();
}

class _FeedViewState extends State<FeedView> with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();
  late final Future<List<PostModel>?> _itemsFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemsFuture = _postService.fetchPostItemsAdvance();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: AppBar(),
      body: _FeedFutureBuilder(itemsFuture: _itemsFuture),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

class _FeedFutureBuilder extends StatelessWidget {
  const _FeedFutureBuilder({
    Key? key,
    required Future<List<PostModel>?> itemsFuture,
  })  : _itemsFuture = itemsFuture,
        super(key: key);

  final Future<List<PostModel>?> _itemsFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PostModel>?>(
      future: _itemsFuture,
      builder: (BuildContext context, AsyncSnapshot<List<PostModel>?> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Placeholder();
          case ConnectionState.waiting:
          case ConnectionState.active:
            return const Center(child: CircularProgressIndicator());
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data?[index].body ?? ''),
                    ),
                  );
                },
              );
            } else {
              return const Placeholder();
            }
        }
      },
    );
  }
}
