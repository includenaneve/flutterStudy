import 'package:flutter/material.dart';
// ContainerDemo 容器
// ImagesDemo 图片
// ListViewDemo
void main() => runApp(ListViewDemo());

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '颈椎康复指南',
      home: Scaffold( // 脚手架
        body: Center(
          child: Container(
            child: new Text(
              '一条七分熟的颈椎',
              style: TextStyle(fontSize: 40.0, color: Colors.white),
            ), // Text组件
            alignment: Alignment.topLeft,
            width: 500.0, // 宽度
            height: 400.0, // 高度
            // color: Colors.purple,
            padding: const EdgeInsets.fromLTRB(10.0, 30.0, 0, 0), // 内边距
            margin: const EdgeInsets.all(10.0), // 外边距
            decoration: new BoxDecoration( // 描述Container的背景和边框等属性
              gradient: const LinearGradient(
                colors: [Colors. lightBlue, Colors.lightGreen, Colors.purple]
              ),
              border: Border.all(width: 5.0, color: Colors.red)
            ),
          ),
        ),
      ),
    );
  }
}

class ImagesDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '颈椎康复指南',
      home: Scaffold( // 脚手架
        body: Center(
          child: Container(
            child: new Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_' + 
              '10000&sec=1578846175564&di=d4f79f9cd283ace06fb286db7145033a' + 
              '&imgtype=0&src=http%3A%2F%2Fimg1.voc.com.cn%2FUpLoadFile%2F' + 
              '2019%2F02%2F28%2F201902281206378533.jpg',
              // 控制图片在容器的展示方式
              // fit: BoxFit.fitWidth, // 横向充满容器
              // fit: BoxFit.fill, // 全铺满
              // fit: BoxFit.fitHeight // 纵向充满容器
              // fit: BoxFit.cover, // 可能被拉伸 可能被裁切 充满容器
              // fit: BoxFit.scaleDown, // 保持原图大小
              fit: BoxFit.contain,
              color: Colors.white, // 混合模式下的颜色
              colorBlendMode: BlendMode.darken, // 图片混合模式
              // colorBlendMode: BlendMode.modulate,
              repeat: ImageRepeat.repeatX, // 图片的重复
            ),
            width: 200.0,
            height: 200.0,
            // color: Colors.purple,
          ),
        ),
      ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView小样',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListViewDemo'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.perm_camera_mic),
              title: new Text('麦克风'),
            ),
            new ListTile(
              leading: new Icon(Icons.time_to_leave),
              title: new Text('车'),
            ),
            new ListTile(
              leading: new Icon(Icons.phone_android),
              title: new Text('手机'),
            ),
            new Container(
              child: new Image.network('https://www.babybang123.com/babybang2/beibeibang/build/images/play-banner.png'),
              width: 100.0,
              height: 100.0,
            ),
            new Container(
              child: new Image.network('https://www.babybang123.com/babybang2/beibeibang/build/images/play-banner.png'),
              width: 100.0,
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}

