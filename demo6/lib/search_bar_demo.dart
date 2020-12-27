import 'package:flutter/material.dart';
import 'data.dart';

class SearchBarDemo extends StatefulWidget{
  _SearchBarDemoState createState()=> _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SearchBarDemo'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
             // print('点击了搜索');
              showSearch( context:context, delegate:searchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}

class searchBarDelegate extends SearchDelegate<String>{
  // 编写搜索删除按钮 重置
  @override
  List<Widget> buildActions(BuildContext context) {
   return [
     IconButton(
       icon: Icon(Icons.clear),
       onPressed: ()=>query = '',
     )
   ];
  }

  @override

  Widget buildLeading(BuildContext context){
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,progress: transitionAnimation,
        ),
        onPressed: ()=>close(context,null)
    );
  }

  @override

  Widget buildResults(BuildContext context){
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override

  Widget buildSuggestions(BuildContext context) {
   final suggestionList = query.isEmpty ? ['推荐','111','222'] : searchList.where((element) => element.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context,index)=> ListTile(
        // 富文本
        title: RichText(
          text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey)
              )
            ]
          ),
        ),
      ),
    );
  }

}