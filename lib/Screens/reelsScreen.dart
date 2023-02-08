import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui/utils/Utils.dart';

class reelsScreen extends StatefulWidget {
  const reelsScreen({super.key});

  @override
  State<reelsScreen> createState() => _reelsScreenState();
}

class _reelsScreenState extends State<reelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Reel Screen')),
    );
  }
}