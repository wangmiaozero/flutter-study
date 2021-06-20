/*
 * @Description: Category
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 14:08:30
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-20 22:02:44
 */
import 'package:flutter/material.dart';
import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
            child: Text("跳转到表单页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            })
      ],
    );
  }
}
