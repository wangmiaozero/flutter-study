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
    var card = new Card(
      child: Column(
        children: <Widget>[ListTile(
          title: new Text('全栈修炼',style: TextStyle(fontWeight: FontWeight.w900),),
          subtitle: new Text('13333333333'),
          leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
        ),
          new Divider(),
          ListTile(
            title: new Text('兔子零',style: TextStyle(fontWeight: FontWeight.w900),),
            subtitle: new Text('13333333333'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title: new Text('前端开发',style: TextStyle(fontWeight: FontWeight.w900),),
            subtitle: new Text('13333333333'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          )
        ],
      ),
    );
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
           // title:Text('Flutter Demo 学习')
            title:Text('Flutter 卡片')
        ),
        body: Center(child: card)
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
