import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        padding: PaddindUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddindUtility().paddinBottom,
      child: Padding(
        padding: PaddindUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(_model.imagePath, fit: BoxFit.fill),
            Padding(
              padding: PaddindUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(_model.title), Text('${_model.price} eth')],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art2', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art3', price: 3.4),
      CollectionModel(imagePath: ProjectImages.imageCollection, title: 'Abstract Art4', price: 3.4),
    ];
  }
}

class PaddindUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddinBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const imageCollection = 'assets/png/image_collection.png';
}
