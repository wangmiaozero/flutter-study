/*
 * @Description: 
 * @Version: 2.0
 * @Autor: wangmiao
 * @Date: 2020-11-04 14:57:56
 * @LastEditors: wangmiao
 * @LastEditTime: 2020-11-04 17:10:51
 */
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/email.dart';
import 'pages/pages.dart';
import 'pages/airplay.dart';

class BottomNavgationWidget extends StatefulWidget {
  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {
  //定义底部导航栏字体的颜色
  final _BottomNavgationColor = Colors.blue;
  final _IconNavgationColor = Colors.black;
  //需要点击的item索引
  int _currentIndex = 0;
  //定义装有 4 个页面组件用到的 List ,所以范型用的 Widget
  List<Widget> list = List();
  //重写StatefulWidget抽象类中的initState()方法，用于初始化的操作
  @override
  void initState() {
    list
      // 点点 建造者模式 添加完毕后 继续返回list 集合 跟java 一样
      // 使用 List 的 ..add()方法，写法比逐个去 mList.add()要简单
      ..add(Home())
      ..add(Email())
      ..add(Pages())
      ..add(Airplay());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      // bottomNavigationBar 自定义appBar
      bottomNavigationBar: BottomNavigationBar(
        //这是添加的4个item
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _IconNavgationColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _BottomNavgationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _IconNavgationColor,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: _BottomNavgationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _IconNavgationColor,
              ),
              title: Text(
                'Pages',
                style: TextStyle(color: _BottomNavgationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _IconNavgationColor,
              ),
              title: Text(
                'Airplay',
                style: TextStyle(color: _BottomNavgationColor),
              )),
        ],
        currentIndex: _currentIndex, // 哪个被选中就会高亮 item的索引赋值
        //item点击事件
        onTap: (int index) {
          setState(() {
            //当前索引等于点击后的item索引
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
