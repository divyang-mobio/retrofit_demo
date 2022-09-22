import 'package:flutter/material.dart';
import '../model/model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.data}) : super(key: key);
  final DataModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Screen")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title:", style: Theme.of(context).textTheme.headline6),
            Text(data.name),
            Text("Body:", style: Theme.of(context).textTheme.headline6),
            Text(data.subtitle)
          ]),
    );
  }
}
