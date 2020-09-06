import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    items: new List<String>.generate(50, (index) => "Item $index")
  ));
}

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key,@required this.items}):super(key:key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.9),// 最大是1 第一个参数是x轴 第二个参数是y轴
      children: <Widget>[new CircleAvatar(
        backgroundImage: new NetworkImage('https://i1.hdslb.com/bfs/face/a5814e1ae9b9f5a6e3e8c012a0d2b344f8fec1cf.gif'),
        radius: 100.0,
      ),
      /*  new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('兔子零'),
        )*/
      new Positioned(
        top: 10.0,
        left: 10.0,
        child: new Text('www.wangmiaozero.cn'),
      ),
      new Positioned(
        bottom: 10.0,
        right: 10.0,
        child: new Text('兔子零')
      )
      ],
    );
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
           // title:Text('Flutter Demo 学习')
            title:Text('Flutter 重叠布局')
        ),
        body: Center(child: stack)
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
