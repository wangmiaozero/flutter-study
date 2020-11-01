import 'package:flutter/material.dart';
import 'second_page.dart';
import 'custome_router.dart';
class FirstPage extends StatefulWidget {
  _BottomNavgationWidgetState createState()=>_BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<FirstPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
     backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('FirstPage',style: TextStyle(fontSize: 26.0),),
        elevation: 0.0,// 默认是4.0  设置0.0 阴影会消失
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 46.0,
          ),
          onPressed: (){
            Navigator.of(context).push(CustomeRoute(secondPage()));
          },
        ),
      ),
    );
  }
}