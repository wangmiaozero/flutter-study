/*
 * @Description: 
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-06-20 23:27:08
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-06-21 00:02:31
 */
import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

//配置路由
dynamic routes = {
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productinfo': (context, {arguments}) =>
      ProductInfoPage(arguments: arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
