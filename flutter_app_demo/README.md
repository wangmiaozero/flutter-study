# flutter_app_demo

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# 第一个hello world

  `textAlign: TextAlign.left`, 文字左
  `textAlign: TextAlign.right,` 文字右
 `textAlign: TextAlign.start,` 文字开始
  `textAlign: TextAlign.end` 文字结束
  `maxLines: 1,` 最多显示多少行
  `overflow: TextOverflow.ellipsis`          显示三个点点
  `overflow: TextOverflow.fade` 从上到下的一个渐变效果

```
style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 125, 125),// 颜色
              decoration: TextDecoration.underline,// 加入下划线
              decorationStyle: TextDecorationStyle.solid,// 加入下滑线样式,实线,虚线等等
  )
```

```
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
      home:Scaffold(
        appBar: AppBar(
            title:Text('Flutter Demo 学习')
        ),
        body: Center(
          child: Text('Hello World,你好,flutter,222222222222222222222222222222222Hello World,你好,flutter',
            textAlign: TextAlign.center,// 文字居中
          //  textAlign: TextAlign.left,// 文字左
            // textAlign: TextAlign.right,// 文字右
           //  textAlign: TextAlign.start,// 文字开始
            //textAlign: TextAlign.end,// 文字结束
            maxLines: 1,// 最多显示多少行
            overflow: TextOverflow.ellipsis,// 显示三个点点
           // overflow: TextOverflow.fade,// 从上到下的一个渐变效果
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline,// 加入下划线
           //   decorationStyle: TextDecorationStyle.solid,// 加入下滑线样式,实线,虚线等等
            ),
          ),
        ),
      )
     /* theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
    //  home: MyHomePage(title: 'Flutter Demo 学习'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
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

```

# Container

>      Container相当于div

`decoration和color不能同时存在`

```
   child: Container(
          // Container相当于div
          child: new Text('hello flutter',style: TextStyle(fontSize: 20),),
         // alignment: Alignment.center,// alignment 子元素对齐
          //alignment: Alignment.bottomCenter,// 底部居中对齐
          // alignment: Alignment.bottomLeft,// 底部左边对齐
          //  alignment: Alignment.bottomRight,// 底部右边对齐
          //  alignment: Alignment.topCenter,// 顶部居中对齐
           alignment: Alignment.topLeft,// 顶部左边对齐
          //  alignment: Alignment.topRight,// 顶部右边对齐
          width: 500.0,
          height: 400.0,
         // color: Colors.lightBlue,// 设置背景颜色
          //  padding: const EdgeInsets.all(20.0),// padding内边距
            padding:  const EdgeInsets.fromLTRB(30.0, 50.0, 0, 0), // left, top, right, bottom 分别设置
           // margin: const EdgeInsets.fromLTRB(30.0, 50.0, 0, 0), // left, top, right, bottom 分别设置
            margin: const EdgeInsets.all(10.0),// margin 外边距
            decoration: new BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple])
            ), // 渐变颜色 
        ),
```

效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter9.png)](http://oss.wangmiaozero.cn/images/media/flutter9.png)

> border设置边框

```
 decoration: new BoxDecoration(
              gradient: const LinearGradient(colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]),
              border:Border.all(width: 10.0,color:Colors.red),// 设置边框
            ), // 渐变颜色
```

> ListView 列表

```
  body:  new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new ListTile(
              leading:new Icon(Icons.ac_unit),
             title:new Text('ac_unit')
            ),
            new ListTile(
                leading:new Icon(Icons.access_alarm_sharp),
                title:new Text('access_alarm_sharp')
            )
          ],
        )
```
`scrollDirection: Axis.vertical` 垂直列表
`
`scrollDirection: Axis.horizontal,` 横向列表

# 组件

```
import 'package:flutter/cupertino.dart';
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
      home:Scaffold(
        appBar: AppBar(
            title:Text('Flutter Demo 学习')
        ),
        body:  MyList()//使用组件
      )
    );
  }
}
```

```
class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.purple,
        ),
        new Container(
          width: 180.0,
          color: Colors.amber,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightBlueAccent,
        )
      ]
    );
  }
}
```

# 动态列表渲染

```
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
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
            title:Text('Flutter Demo 学习')
        ),
        body:   ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              return new ListTile(
                title: new Text('${items[index]}'),
              );
            }
        )
      )
    );
  }
}
```
# gridDelegate方法

```
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
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
            title:Text('Flutter Demo 学习')
        ),
        body:GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,// 横向排列
            mainAxisSpacing: 2.0,//下面  行距离
            crossAxisSpacing: 2.0,//右边 列的间距
            childAspectRatio: 0.8,// 缩放比率
          ),
          children: <Widget>[
            new Image.network('http://img5.mtime.cn/mt/2020/08/02/162803.49207350_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/08/11/212326.48867515_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/08/06/102642.93301427_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/08/10/165827.19546879_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/08/06/151041.12973189_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/08/06/152948.87634953_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/07/20/165700.45547092_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/06/01/090833.60062442_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/07/18/195707.38118894_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/08/12/164250.89643015_100X140X4.jpg',fit: BoxFit.cover,),
            new Image.network('http://img5.mtime.cn/mt/2020/09/02/161354.51909041_100X140X4.jpg',fit: BoxFit.cover,)
          ],
        )
      )
    );
  }
}
```

效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter10.png)](http://oss.wangmiaozero.cn/images/media/flutter10.png)

# SDK升级

1. 删除原来的`SDK`重新下载
2. 使用命令`flutter upgrade` 进行升级

# Row布局

`Expanded 撑满`


```
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
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
           // title:Text('Flutter Demo 学习')
            title:Text('Flutter 水平方向布局')
        ),
        body:new Row(
          children: <Widget>[
            Expanded(child:  new RaisedButton(
                onPressed: (){},
              color: Colors.redAccent,
              child: new Text('红色 BUtton'),
                )),
            Expanded(child:  new RaisedButton(
              onPressed: (){},
              color: Colors.orangeAccent,
              child: new Text('黄色 BUtton'),
            )),
            Expanded(child:  new RaisedButton(
              onPressed: (){},
              color: Colors.lightBlue,
              child: new Text('蓝色 BUtton'),
            ))
          ]
        )
      )
    );
  }
}
```


效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter11.png)](http://oss.wangmiaozero.cn/images/media/flutter11.png)


>  中间大，两边小布局

```
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
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
           // title:Text('Flutter Demo 学习')
            title:Text('Flutter 水平方向布局')
        ),
        body:new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: (){},
                color: Colors.redAccent,
                child: new Text('红色 BUtton'),
              ),
              Expanded(child:  new RaisedButton(
                onPressed: (){},
                color: Colors.orangeAccent,
                child: new Text('黄色 BUtton'),
              )),
               new RaisedButton(
                onPressed: (){},
                color: Colors.lightBlue,
                child: new Text('蓝色 BUtton'),
              )
            ]
        )
      )
    );
  }
}
```

效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter12.png)](http://oss.wangmiaozero.cn/images/media/flutter12.png)

# Column布局

```
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
    return MaterialApp(
      title: 'Flutter Demo',
      home:Scaffold(
        appBar: AppBar(
           // title:Text('Flutter Demo 学习')
            title:Text('Flutter 垂直方向布局')
        ),
        body: Center(child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('flutter'),
            Text('dart'),
            Text('vue'),
            Text('uni-app'),
            Expanded(child:  Text('react'),),
            Expanded(child: Text('react-native'),),
            Text('wechat'),
            Text('H5'),
            Text('Express'),
            Text('koa'),
            Text('egg'),
          ],
        ))
      )
    );
  }
}
```

效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter13.png)](http://oss.wangmiaozero.cn/images/media/flutter13.png)

# Stack


```
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
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('兔子零'),
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
```

效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter14.png)](http://oss.wangmiaozero.cn/images/media/flutter14.png)

# Positioned

```
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

```


效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter15.png)](http://oss.wangmiaozero.cn/images/media/flutter15.png)

# Card
` new Divider()` 分割线

```
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
```

效果如下: 

[![](http://oss.wangmiaozero.cn/images/media/flutter16.png)](http://oss.wangmiaozero.cn/images/media/flutter16.png)

# 导航父子页面的跳转返回

```
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:"导航演示",
    home: new FirstScreen()
  ));
}

// 父页面
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text('Flutter 导航页面')
        ),
        body: Center(child: RaisedButton(
          child: Text('查看商品详情页'),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=> new SecondScreed()
            )
            );
          },
        ))
      );
  }
}
// 子页面
class SecondScreed extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("详情页"),),
      body: Center(
        child: RaisedButton(
          child: new Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
```
