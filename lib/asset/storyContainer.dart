import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CutomstoryItem extends StatelessWidget {
  const CutomstoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){},
          child: Container(
            padding: EdgeInsets.only(top: 9, left: 6, right: 6, bottom: 8),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/images.jpeg'),
              child: CircleAvatar(
                radius: 27.5,
                child: Icon(Icons.person),
              ),
              radius: 30,
            ),
          ),
        ),
        Text('Person')
      ],
    );
  }
}
