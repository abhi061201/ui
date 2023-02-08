import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/Screens/StoryStructure.dart';
import 'package:ui/utils/Utils.dart';
import 'package:http/http.dart' as http;
import '../Models/postmodel.dart';
import '../asset/postContainer.dart';
import '../asset/storyContainer.dart';

Utils utils = new Utils();
List<Data> postList = [];
Future<List<Data>> getList() async {
  postList.clear();
  var response =
      await http.get(Uri.parse("https://reqres.in/api/users?page=2"));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body.toString());
    debugPrint(data.toString());
    for (Map<String, dynamic> i in data['data']) {
      postList.add(Data.fromJson(i));
    }
  }
  return postList;
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //stories

          // Expanded(
          //   child: FutureBuilder(
          //       future: getList(),
          //       builder: (context, snapshot) {
          //         if(!snapshot.hasData)
          //         {
          //           return Center(child: CircularProgressIndicator(),);
          //         }
          //      else {
          //        return ListView.builder(
          //         scrollDirection: Axis.horizontal,
          //         shrinkWrap: true,
          //         itemCount: postList.length,
          //         itemBuilder: ((context, index) {
          //         return Text(index.toString());
          //       }));
          //      }
          //     },),
          // ),

          Expanded(
            child: FutureBuilder(
              future: getList(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: postList.length,
                    itemBuilder: ((context, index) {
                      return PostStructure(postList: postList,index:index);
                    }),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
