/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-01 23:26:52
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-14 23:57:51
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo'),
          ),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      //direction: Axis.vertical,
      //alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,
      children: <Widget>[
        MyButton("clannad"),
        MyButton("AIR"),
        MyButton("KANON"),
        MyButton("Angel Beats"),
        MyButton("秒速五厘米"),
        MyButton("轻音少女"),
        MyButton("千与千寻"),
        MyButton("天空之城"),
        MyButton("魔女宅急便"),
        MyButton("朝花夕誓"),
        MyButton("龙猫"),
        MyButton("好想告诉你"),
        MyButton("哆啦A梦"),
        MyButton("迪迦奥特曼"),
        MyButton("SOLA"),
        MyButton("魔法少女樱"),
        MyButton("凉宫春日的忧郁"),
        MyButton("悠久之翼"),
        MyButton("数码宝贝"),
        MyButton("神奇宝贝"),
        MyButton("火影忍者"),
        MyButton("海贼王"),
        MyButton("零之使魔"),
        MyButton("灼眼的夏娜"),
        MyButton("黑之契约者"),
        MyButton("来自风平浪静的明天"),
        MyButton("我们仍未知道那天所看见的花的名字"),
        MyButton("Fate/Zero"),
        MyButton("我的青春恋爱物语果然有问题"),
        MyButton("罪恶王冠"),
        MyButton("男子高中生的日常"),
        MyButton("某科学的超电磁炮"),
        MyButton("魔法禁书目录"),
        MyButton("K"),
        MyButton("叶之庭"),
        MyButton("天降之物"),
        MyButton("滑头鬼之孙"),
        MyButton("银婚"),
        MyButton("死神"),
        MyButton("妖精的尾巴"),
        MyButton("新世纪福音战士"),
        MyButton("NEW GAME"),
        MyButton("路人女主的养成方法"),
        MyButton("辉夜大小姐想让我告白"),
        MyButton("等等。。。")
      ],
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
