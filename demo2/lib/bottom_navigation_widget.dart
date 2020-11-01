import 'package:flutter/material.dart';
import 'each_view.dart';
class BottomNavgationWidget extends StatefulWidget {
  _BottomNavgationWidgetState createState()=>_BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget>{
  final _BottomNavgationColor = Colors.blue;
  final _IconNavgationColor = Colors.black;
  int _currentIndex = 0;
  List<Widget> _eachView;
  int _index = 0;
  @override
  void initState(){
    super.initState();
    _eachView = List();
    // 组件要求传入String  必须传入
    _eachView..add(EachView('卢姥爷'))..add(EachView('刻晴'));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _eachView[_index],
      // floatingActionButton 交互浮动按钮 组件
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return EachView('New Page');
          }));
        },// 响应方式
        tooltip: '刻晴',// 长按提示文字
        child: Icon(
          Icons.add,
          color:Colors.white
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,// 融合appBar
      // 自带appBar 比较灵活 比bottomNavigationBar灵活
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),// 融合时候需要缺口 （圆形缺口）
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home),color: Colors.white, onPressed: (){
              setState(() {
                _index = 0;
              });
            }),
            IconButton(icon: Icon(Icons.architecture),color: Colors.white, onPressed: (){
              setState(() {
                _index = 1;
              });
            })
          ],
        ),
      ),
    );
  }
}