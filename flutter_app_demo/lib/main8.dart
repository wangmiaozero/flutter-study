import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:"页面跳转返回参",
    home: new firstPage()
  ));
}

class firstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text('页面跳转返回参')
        ),
        body: Center(child: RouterButton())
      );
  }
}

class RouterButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("拿到参数"),),
      body: Center(
        child: RaisedButton(
          onPressed:(){
            _navigateToValue(context);
          },
          child: new Text('拿参数'),
        )
      ),
    );
  }
  _navigateToValue(BuildContext context) async{
    final result = await Navigator.push(context,MaterialPageRoute(builder: (context)=> MyValue() ),
    );
    Scaffold.of(context).showSnackBar(SnackBar(content: new Text('参数 $result}')));
  }
}

class MyValue extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: new Text('我是子页面'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: new Text('子页面参数--Flutter'),
                onPressed: (){
              Navigator.pop(context,'返回参数: hello Flutter');
            }),
            RaisedButton(
                child: new Text('子页面参数--Dart'),
                onPressed: (){
                  Navigator.pop(context,'返回参数: hello Dart');
             })
          ],
        ),
      ),
    );
  }
}