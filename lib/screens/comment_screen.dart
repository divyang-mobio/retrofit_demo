import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrofit_demo/model/user_model.dart';
import '../utils/api_calling.dart';
import '../utils/listView.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Screen')),
      body: FutureBuilder<List<UserModel>>(
        future: ApiCalling(Dio(BaseOptions(contentType: 'application/json')))
            .getUser(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            List<UserModel> data = snapshot.data;
            return listView(data);
          } else {
            return const Center(child: CircularProgressIndicator.adaptive());
          }
        },
      ),
    );
  }
}
