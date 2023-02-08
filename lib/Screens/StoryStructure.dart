import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class StoryStructure extends StatefulWidget {
  const StoryStructure({super.key});

  @override
  State<StoryStructure> createState() => _StoryStructureState();
}

class _StoryStructureState extends State<StoryStructure> {
  @override
  Widget build(BuildContext context) {
    final media= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 9, bottom: 10,left: 9,right: 9),
      child: Container(
        // height: media.height*0.5,
       
        decoration:BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}