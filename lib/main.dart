import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Rs'),
          ),
          body: const HomePage(),
        ));
  }
}

class MenuItem {
  String name = "";

  MenuItem(name) {
    print('skm ??' + name);
    this.name = name;
  }

  factory MenuItem.fromJson(Map<String, dynamic> jsObj) {
    return MenuItem(jsObj["name"]);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  ListView _itemsView(data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _tile(data[index]);
      },
    );
  }

  ListTile _tile(MenuItem classification) => ListTile(
        title: Text(classification.name),
      );

  Future<List<MenuItem>> _fetchClassifications(BuildContext context) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/api/app_page.json");
    final resp = json.decode(data);
    List menu = resp['Classification'][0]['MenuItems'];
    return menu.map((jsObj) => MenuItem.fromJson(jsObj)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MenuItem>>(
      future: _fetchClassifications(context),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return _itemsView(snapshot.data);
        }
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
