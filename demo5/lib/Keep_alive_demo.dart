import 'package:flutter/material.dart';

// 累加 保存状态

class MyHomePage extends StatefulWidget {
  // This widget is the root of your application.
 _MyHomePageState createState()=> _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with AutomaticKeepAliveClientMixin {

  int _counter = 0;
  @override
  bool get wantKeepAlive => true;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点击加n'),
            Text('$_counter',style: Theme.of(context).textTheme.display1,)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}