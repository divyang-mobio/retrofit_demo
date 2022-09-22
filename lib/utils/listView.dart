import 'package:flutter/material.dart';
import 'package:retrofit_demo/model/user_model.dart';
import '../model/model.dart';

ListView listView(List data) => ListView.builder(
    itemCount: data.length,
    itemBuilder: (context, index) {
      if (data[index] is DataModel) {
        return cardData(context, data[index]);
      } else {
        return commentCardData(context, data[index]);
      }
    });

GestureDetector cardData(context, DataModel data) => GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detail', arguments: data),
      child: Card(
          elevation: 8.0,
          child:
              ListTile(title: Text(data.name), subtitle: Text(data.subtitle))),
    );

Card commentCardData(context, UserModel data) => Card(
      elevation: 8.0,
      child: ListTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('name:- ${data.name}'),
            Text('UserName:- ${data.username}'),
            Text('email:- ${data.email}'),
            Text('Phone No:- ${data.phone}'),
            Text('Website:- ${data.website}'),
            Text('''Address:- ${data.addressModel.suite},
                  ${data.addressModel.street},
                  ${data.addressModel.city} - ${data.addressModel.zipcode}.'''),
            Text('Company Name:- ${data.companyModel.companyName}'),
            Text('Business Moto:- ${data.companyModel.businessMoto}'),
            Text('Business type:- ${data.companyModel.businessType}')
          ],
        ),
      ),
    );
