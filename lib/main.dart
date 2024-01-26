import 'package:favourite_app/provider/FavProvider.dart';
import 'package:favourite_app/screen/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FavProvider())],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
