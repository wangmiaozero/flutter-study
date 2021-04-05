/*
 * @Description: Flutter Container 组件、Text 组件详解
 * @Version: 0.1
 * @Autor: wangmiao
 * @Date: 2021-04-05 17:38:27
 * @LastEditors: wangmiao
 * @LastEditTime: 2021-04-05 20:03:03
 */
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'bilibili是一家弹幕站点,大家可以在这里找到许多的欢乐,Bilibili,哔哩哔哩,哔哩哔哩动画,哔哩哔哩弹幕网,弹幕视频,B站,弹幕,字幕,AMV,MAD,MTV,ANIME,动漫,动漫音乐,游戏,游戏解说,二次元,游戏视频,ACG,galgame,动画,番组,新番,初音,洛天依,vocaloid,日本动漫,国产动漫,手机游戏,网络游戏,电子竞技,ACG燃曲,ACG神曲,追新番,新番动漫,新番吐槽,巡音,镜音双子,千本樱,初音MIKU,舞蹈MMD,MIKUMIKUDANCE,洛天依原创曲,洛天依翻唱曲,洛天依投食歌,洛天依MMD,vocaloid家族,OST,BGM,动漫歌曲,日本动漫音乐,宫崎骏动漫音乐,动漫音乐推荐,燃系mad,治愈系mad,MAD MOVIE,MAD高燃',
          textAlign: TextAlign
              .left, // 文本对齐方式（center 居中，left 左 对齐，right 右对齐，justfy 两端对齐）
          //overflow: TextOverflow.ellipsis,// 文字超出屏幕之后的处理方式（clip 裁剪，fade 渐隐，ellipsis 省略号）
          maxLines: 4, // 文字显示最大行数
          textScaleFactor: 1.8, //字体显示倍率
          // 字体的样式设置
          style: TextStyle(
              fontSize: 16,
              // color: Colors.red,
              color: Color.fromARGB(251, 114, 153, 0),
              fontWeight: FontWeight.w700, // 字体粗细（bold 粗体，normal 正常体）
              fontStyle: FontStyle.italic, // 文字样式（italic 斜体，normal 正常体）
              decoration: TextDecoration
                  .lineThrough, // 文字装饰线（none 没有线，lineThrough 删 除线，overline 上划线，underline 下划线）
              decorationStyle: TextDecorationStyle
                  .dashed, // 文字装饰线风格（[dashed,dotted]虚线， double 两根线，solid 一根实线，wavy 波浪 线） wordSpacing 单词间
              letterSpacing: 5.0 //字母间隙（如果是负值，会让字母变得更紧 凑）
              ),
        ),
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
            color: Colors.pink,
            border: Border.all(color: Colors.yellow, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        margin: EdgeInsets.fromLTRB(10, 30, 5, 0),
        padding: EdgeInsets.all(20),
        // padding:EdgeInsets.fromLTRB(10, 30, 5, 0)
        // transform: Matrix4.translationValues(50, 0, 0),
        // transform: Matrix4.rotationZ(0.3)
        transform: Matrix4.diagonal3Values(1.2, 1, 1),
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
