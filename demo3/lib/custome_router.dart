import 'package:flutter/material.dart';
class CustomeRoute extends PageRouteBuilder{
  final Widget widget;
  // 构造方法
  CustomeRoute(this.widget)
  :super(
    transitionDuration:Duration(seconds:1 ),
    pageBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
    ){
      return widget;
    },
      // 接受四个参数
    transitionsBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child
    ){
      // 动画实现
      // animate 设置动画曲线
      // curve: Curves.fastOutSlowIn 快出慢进
      return FadeTransition(opacity: Tween(begin: 0.0,end: 2.0)
          .animate(
          CurvedAnimation(
              parent: animation1,
              curve: Curves.fastOutSlowIn
          )
      ),
        child: child,// 子元素没有什么东西 直接把上面child 放进来
      );
    }
  );
}