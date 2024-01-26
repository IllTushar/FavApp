import 'package:favourite_app/provider/FavProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    print("object");
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return buildListItem(index);
          }),
    );
  }

  Widget buildListItem(int index) {
    return Consumer<FavProvider>(
      builder: (BuildContext context, FavProvider value, Widget? child) {
        return ListTile(
          onTap: () {
            if (value.selectedItem.contains(index)) {
              value.removeItem(index);
            } else {
              value.addItem(index);
            }
          },
          title: Text("Item $index"),
          trailing: (value.selectedItem.contains(index))
              ? Icon(Icons.favorite)
              : Icon(Icons.favorite_border),
        );
      },

    );
  }
}
