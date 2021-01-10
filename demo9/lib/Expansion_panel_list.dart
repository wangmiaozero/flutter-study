import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  _ExpansionPanelListDemoState createState()=> _ExpansionPanelListDemoState();
}

// 定义扩展状态类

class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}


class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo>{
  var currentPanelIndex = -1;
  List<int> mList;// 组成一个int 类型的数组 ，用索引控制
  List<ExpandStateBean> expandStateList; // 开展开的状态列表，ExpandStateBean式自定义的类
  // 构造方法，调用这个类的时候自动执行
  _ExpansionPanelListDemoState(){
    mList = new List();
    expandStateList = new List();
    // 遍历集合进行赋值
    for(int i = 0; i<10; i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i, false));
    }
  }
  // 修改展开与闭合的内部方法
 _setCurrentIndex(int index, isExpand){
    setState(() {
      // 遍历可展开状态列表
      expandStateList.forEach((element) {
        if(element.index == index){
          // 取反
          element.isOpen = !isExpand;
        }
      });
    });
 }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expansion panel list"),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // 交互回调属性
          expansionCallback: (index,bol){
            _setCurrentIndex(index, bol);
          },
          children: mList.map((e){
            return ExpansionPanel(
              headerBuilder:(content,isExpanded){
                return ListTile(
                 title: Text('this is No $e')
                );
              },
              body: ListTile(
                title: Text('expansion no. $e'),
              ),
              isExpanded: expandStateList[e].isOpen
            );
          }).toList()
        ),
      ),
    );
  }
}