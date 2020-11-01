import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/email.dart';
import 'pages/pages.dart';
import 'pages/airplay.dart';

class BottomNavgationWidget extends StatefulWidget {
  _BottomNavgationWidgetState createState() => _BottomNavgationWidgetState();
}

class _BottomNavgationWidgetState extends State<BottomNavgationWidget> {
  final _BottomNavgationColor = Colors.blue;
  final _IconNavgationColor = Colors.black;
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState() {
    list
      // 点点 建造者模式 添加完毕后 继续返回list 集合 跟java 一样
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
        currentIndex: _currentIndex, // 哪个被选中就会高亮
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
