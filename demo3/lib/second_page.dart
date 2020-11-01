import 'package:flutter/material.dart';


class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('secondPage',style: TextStyle(fontSize: 26.0),),
        centerTitle: true,// 是否设置appbar 标题文字在中间位置
        backgroundColor: Colors.orange,
        leading: Container(),
        elevation: 4.0,// 默认是4.0
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 46.0,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}