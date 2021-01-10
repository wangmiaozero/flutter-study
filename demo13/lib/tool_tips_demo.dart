import 'package:flutter/material.dart';

class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text('tool tips demo')),
        body:Center(
          child: Tooltip(
            message: 'Tooltip提示，2021年奇幻的一年，让你对世界更深认知',
            child: Icon(Icons.all_inclusive),
          ),
        )
    );
  }
}