import 'package:flutter/material.dart';
// ContainerDemo 容器
// ImagesDemo 图片
// ListViewDemo
// ListViewDemo2
// ListViewDemo3
// GridViewDemo
// GridViewDemo2
// RowWidgetDemo
// ColumnWidget
// ColumnDemo
// PositionDemo
// CardDemo

// 打包命令 keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key

// void main() => runApp(CardDemo());
void main() => runApp(ListViewDemo3(
  // items: List(1000) // 指定数据长度的List
  // items: [1, 2, 3, 4, 5] // 常量List
  // items: List<String>() // 指定数据类型的List
  items: new List<String>.generate(1000, (index) => 'Item $index')
));

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

class ListViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView小样',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListViewDemo'),
        ),
        body: new Container(
          margin: const EdgeInsets.all(20.0),
          color: Colors.grey,
          height: 200.0,
          child: MyList()
          ),
        )
    );
  }
}

class ListViewDemo3 extends StatelessWidget {
  final List<String> items;
  ListViewDemo3({ Key key, @required this.items }):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListViewDemo3',
      home: Scaffold(
        appBar: new AppBar(title: new Text('ListViewDemo3')),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return new ListTile(
              title: new Text('${items[index]}'),
            );
          },
        )
      ),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridViewDemo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('GridViewDemo',)
        ),
        body: GridView.count(
          padding: EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 3,
          children: <Widget>[
            const Text('苦其心志'),
            const Text('劳其筋骨'),
            const Text('饿其体肤'),
            const Text('空乏其身'),
            const Text('行拂乱其所为'),
            const Text('所以动心忍性'),
          ],
        ),
      )
    );
  }
}

class GridViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridViewDemo',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('GridViewDemo',)
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // x轴数据条目数量(多少列)
            mainAxisSpacing: 2.0, // 项目之间上下间隙
            crossAxisSpacing: 3.0, // 项目之间左右间隙
            childAspectRatio: 0.7 // 缩放比例（width: height）
          ),
          children: <Widget>[
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-2001051005490-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-200105100U90-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-2001061055440-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-200106132H20-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-20010G00P70-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-2001111G6430-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-20010Q00F60-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/20/4-2001042005380-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/19/4-1912311456080-L.jpg', fit: BoxFit.cover),
            new Image.network('https://imgs.kabc688.com/0701pic/allimg/16/4_02141932205M7.jpg', fit: BoxFit.cover),
          ],
        )
      )
    );
  }
}

class RowWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RowWidgetDemo',
      home: Scaffold(
        appBar: new AppBar(title: new Text('RowWidgetDemo')),
        body: new Row(
          children: <Widget>[
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: new Text('红色按钮'),
              ),
            ),
            Expanded(
              child: new RaisedButton(
                onPressed: () {},
                color: Colors.lightBlue,
                child: new Text('蓝色按钮'),
              ),
            ),
            new RaisedButton(
              onPressed: () {},
              color: Colors.greenAccent,
              child: new Text('绿色按钮'),
            ),
          ],
        ),
      ),
    );
  }
}

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '垂直布局',
      home: Scaffold(
        appBar: new AppBar(title: new Text('垂直布局'),),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('我有一只小毛驴我从来也不骑'),
              Text('有一天我心绪来潮骑着去赶集'),
              Text('顶顶顶顶'),
              Text('会当凌绝顶，一览众山小'),
            ],
          )
        ),
      )
    );
  }
}

class ColumnDemo extends StatelessWidget {
  var stack = new Stack(
    alignment: const FractionalOffset(0.5, 0.8),
    children: <Widget>[
      new CircleAvatar(
        backgroundImage: new NetworkImage('https://imgs.kabc688.com/0701pic/allimg/20/4-2001051005490-L.jpg'),
        radius: 100.0,
      ),
      new Container(
        decoration: new BoxDecoration(
          color: Colors.black87,
        ),
        padding: EdgeInsets.all(5.0),
        child: Text('辛弃疾', style: TextStyle(
          color: Colors.white,
          fontSize: 30.0
        ),),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '垂直布局2',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直布局2'),
        ),
        body: Center(
          child: stack,
        )
      )
    );
  }
}

class PositionDemo extends StatelessWidget {
  var stack = new Stack(
    alignment: const FractionalOffset(0.5, 0.8),
    children: <Widget>[
      new CircleAvatar(
        backgroundImage: new NetworkImage('https://imgs.kabc688.com/0701pic/allimg/20/4-2001051005490-L.jpg'),
        radius: 100.0,
      ),
      new Positioned(
        top: 10.0,
        left: 10.0,
        child: new Text('飘花电影网'),
      ),
      new Positioned(
        bottom: 10.0,
        right: 10.0,
        child: new Text('辛弃疾'),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '垂直布局2',
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('垂直布局2'),
        ),
        body: Center(
          child: stack, 
        )
      )
    );
  }
}

class CardDemo extends StatelessWidget {

  var card = new Card(
    margin: EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        ListTile(
          title: Text('上海市宝山区xxx科技', style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('Gatsby：13099998888'),
          leading: new Icon(Icons.account_box),
        ),
        new Divider(),
        ListTile(
          title: Text('北京市海定区宝石镇', style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('Penguin：17811112222'),
          leading: new Icon(Icons.account_box),
        ),
        new Divider(),
        ListTile(
          title: Text('广东省广州市白云区', style: TextStyle(fontWeight: FontWeight.w500),),
          subtitle: Text('天才：16677778888'),
          leading: new Icon(Icons.account_box),
        ),
        new Divider(),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CardDemo',
      home: Scaffold(
        appBar: new AppBar(),
        body: card,
      ),
    );
  }
}
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.deepOrange,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightBlue,
        ),
        new Container(
          width: 180.0,
          color: Colors.lightGreen,
        ),
        new Container(
          width: 180.0,
          color: Colors.deepPurple,
        ),
        new Container(
          width: 180.0,
          color: Colors.black38,
        ),
      ]);
  }

}

