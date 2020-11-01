import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(

  ));
}

class MyApp extends StatelessWidget {
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
            body:GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,// 横向排列
                mainAxisSpacing: 2.0,//下面  行距离
                crossAxisSpacing: 2.0,//右边 列的间距
                childAspectRatio: 0.8,// 缩放比率
              ),
              children: <Widget>[
                new Image.asset('images/test.jpg'),// 本地图片
                new Image.network('http://img5.mtime.cn/mt/2020/08/02/162803.49207350_100X140X4.jpg',fit: BoxFit.cover,),
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


