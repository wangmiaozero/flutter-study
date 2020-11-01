import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product{
  final String title; // 商品标题
  final String description;// 商品描述
  Product(this.title,this.description);
}

void main() {
  runApp(MaterialApp(
    title:"路由传参",
    home: new ProductList(
      prodcuts:List.generate(20, (index) => Product('商品 $index', '商品详情编号为: $index'))
    )
  ));
}

// 父页面
class ProductList extends StatelessWidget {
  final List<Product> prodcuts;
  ProductList({Key key,@required this.prodcuts}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text('商品列表')
        ),
        body: Center(child: ListView.builder(itemBuilder: (context,index){
          return ListTile(
            title: new Text(prodcuts[index].title),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>ProductDetail(product:prodcuts[index]))
              );
            },
          );
        }))
      );
  }
}
// 子页面
class ProductDetail extends StatelessWidget{
  // 接受参数
  final Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text("详情页 ${product.title}"),),
      body: Center(
        child: Center(child: Text('${product.description}'),)
      ),
    );
  }
}