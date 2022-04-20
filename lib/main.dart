import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Product",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (content, index) {
            return Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: ListTile(
                  leading: Image.network(
                    "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ba2596f5-577c-4da6-b632-d7e0327ddedd/metcon-7-training-shoes-hWsBgd.png",
                  ),
                  title: Text(
                    "Brands new shoes",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "SH-231",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Icon(
                    Icons.add,
                  ),
                ));
          }),
      floatingActionButton: FloatingActionButton(onPressed: () {}, splashColor: Colors.purple, tooltip: "Cart", child: Icon(Icons.shopping_cart)),
      bottomNavigationBar: BottomAppBar(color: Colors.white, child: Container(height: 50.0)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
