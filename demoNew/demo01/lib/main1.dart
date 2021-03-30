import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

//自定义组件
// StatelessWidget 是无状态组件 状态不可变的 widget
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Text(
          '你好Flutter 111',
          textDirection: TextDirection.ltr,// 表示从左到右

          style: TextStyle(
            fontSize: 40.0,
            color: Colors.yellow,
            // color: Color.fromRGBO(244, 233, 121, 0.5),
          ),
        )
    );
  }

}