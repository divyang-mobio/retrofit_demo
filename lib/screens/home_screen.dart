import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../model/model.dart';
import '../utils/api_calling.dart';
import '../utils/listView.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrofit demo'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/comment');
              },
              icon: const Icon(Icons.comment))
        ],
      ),
      body: FutureBuilder<List<DataModel>>(
        future: ApiCalling(Dio(BaseOptions(contentType: 'application/json')))
            .getPost(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<DataModel> data = snapshot.data;
            return listView(data);
          } else {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }
}
