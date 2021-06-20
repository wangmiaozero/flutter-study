/*
 * @Description: search
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 13:58:46
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-20 14:24:55
 */
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面"),
      ),
      body: Text("搜索页面内容区域"),
    );
  }
}
