import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/Models/postmodel.dart';
import 'package:http/http.dart' as http;

class homescreenhelper extends StatelessWidget {
  homescreenhelper({super.key});

  @override
  List<postModel> postlist = [];
  Future<List<postModel>> getlist() async {
    var response= await http.get(Uri.parse('https://reqres.in/api/users?page=2'));

    if(response.statusCode==200)
    {
      var data= jsonDecode(response.body.toString());
      debugPrint(data.toString());
      for(Map<String,dynamic> i in data['data'])
      {
        postlist.add(postModel.fromJson(i));
      }
    }
    return postlist;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
