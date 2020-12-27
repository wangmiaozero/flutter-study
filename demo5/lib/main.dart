import 'package:flutter/material.dart';
import 'Keep_alive_demo.dart';
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
      home: keepAliveDemo()
    );
  }
}

class keepAliveDemo extends StatefulWidget {
  _keepAliveDemoState createState()=> _keepAliveDemoState();
}
// 垂直同步
class _keepAliveDemoState extends State<keepAliveDemo> with SingleTickerProviderStateMixin{

  // 坐标选项卡和选项卡视图之间的选项卡选择。
  // index属性是所选选项卡的索引，动画表示选项卡栏和选项卡栏视图的当前滚动位置。选中的标签的索引可以用animateTo更改。
  // 构建选项卡栏或选项卡视图的有状态小部件可以创建选项卡控制器并直接共享它。
  // 当TabBar和TabBarView没有一个方便的有状态祖先时，可以通过提供一个DefaultTabController继承的小部件来共享TabController。

  TabController _controller;
  @override
  void initState(){
    super.initState();
    //  TabController 是协调标签和标签展示内容页，this指向当前类的实例对象
    _controller = TabController(length: 3,vsync: this);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text('Keep Alive Demo'),
         bottom: TabBar(
           controller: _controller,
           tabs: [
             Tab(icon: Icon(Icons.directions_car),),
             Tab(icon: Icon(Icons.directions_transit),),
             Tab(icon: Icon(Icons.directions_bike),)
           ],
         ),
       ),
       body: TabBarView(
         controller: _controller,
         children: <Widget>[
           // Text('11111'),
           // Text('22222'),
           // Text('33333')
           MyHomePage(),
           MyHomePage(),
           MyHomePage()
         ],
       ),
     );
  }
}

