import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

import '../Models/postmodel.dart';

class PostStructure extends StatelessWidget {
  List<Data> postList = [];
  int index;
   PostStructure({super.key, required this.postList, required this.index});

  @override
  Widget build(BuildContext context) {
    var media= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
      child: Column(
        children: [
          InkWell(
            onTap: (){},
            child: Row(
              children: [
                CircleAvatar(backgroundImage: NetworkImage(postList[index].avatar.toString()),),
                SizedBox(width: media.width*0.02,),
                Text(postList[index].firstName.toString()+ " "+ postList[index].lastName.toString()),
                Spacer(),
                IconButton(onPressed: (){}, icon:Icon(Icons.more_vert))
              ],
            ),
          ),
          SizedBox(height: media.height*0.01,),
          Container(
            height: media.height*0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.orangeAccent,
            ),
            child: Center(child: Text(postList[index].email.toString())),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline),),
              IconButton(onPressed: (){}, icon: Icon(Icons.comment_bank_outlined),),
              
              
            ],
          ),
        ],
      ),
    );
  }
}