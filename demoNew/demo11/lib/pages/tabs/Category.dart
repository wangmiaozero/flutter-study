/*
 * @Description: Category 分类
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-19 22:42:56
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-19 22:48:05
 */
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("分类"));
  }
}
