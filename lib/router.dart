import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: '导航',
    home: Page1()
  ));
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表页'),),
      body: Center(
        child: RaisedButton(
          child: Text('查看详情页'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => new Page2()
            ));
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页'),),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}