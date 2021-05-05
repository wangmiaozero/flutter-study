/*
 * @Description: borderRadius
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-05-05 19:37:48
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-05-05 21:04:45
 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: HomeContent(),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return Center(
    //   child: Container(
    //     width: 300,
    //     height: 300,
    //     decoration: BoxDecoration(
    //         color: Colors.yellow,
    //         //borderRadius: BorderRadius.circular(150),
    //         borderRadius: BorderRadius.all(Radius.circular(150)),
    //         image: DecorationImage(
    //             image: NetworkImage(
    //                 "https://oss.wangmiaozero.cn/userPicList/20200223/949f6e00-5620-11ea-9330-e9098b64824e.JPG"),
    //             fit: BoxFit.cover)),
    //   ),
    // );
    return Center(
        child: Container(
      child: ClipOval(
        child: Image.network(
          'https://oss.wangmiaozero.cn/userPicList/20210427/382f0340-a766-11eb-aec4-9fc25e02b653.jpg',
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}
