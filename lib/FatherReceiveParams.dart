import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    title: '父组件接收子组件返回参数',
    home: FatherPage(),
  ));
}

class FatherPage extends StatelessWidget {
  const FatherPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('父组件'),),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  const RouteButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToChildComponent(context);
      },
      child: Text('去到子组件'),
    );
  }
  _navigateToChildComponent(BuildContext context ) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChildPage()
      )
    );
    
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$result')
    ));
  }
}

class ChildPage extends StatelessWidget {
  const ChildPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('子组件'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('张宇'),
              onPressed: () {
                Navigator.pop(context, '小小的太阳');
              },
            ),
            RaisedButton(
              child: Text('张国荣'),
              onPressed: () {
                Navigator.pop(context, '洁身自爱');
              },
            ),
          ],
        ),
      ),
    );
  }
}