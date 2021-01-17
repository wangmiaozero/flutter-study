import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// import '../utils/HttpUtils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Text('商城首页'),
        )
    );
  }
  void getHttp()async{
    print('getHttp');
    try{
      Response response;
      var data={'name':'技术胖'};
      response = await Dio().get(
        "https://www.wangmiaozero.cn/api/web/blogs/articletype?phoneID=be5c252d31149b24d6ae9485e5d74ec3",
          queryParameters:data
      );
      print(data);
      return print(response);
    }catch(e){
      return print(e);
    }
  }
}