import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './home/home_page.dart';
import './user/user_page.dart';
import './now/now_page.dart';
import './find/find_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(const IconData(59530, fontFamily: 'MaterialIcons')),
      title: Text('首页')
    ),
    BottomNavigationBarItem(
      icon: Icon(const IconData(59406, fontFamily: 'MaterialIcons')),
      title: Text('发现')
    ),
    BottomNavigationBarItem(
      icon: Icon(const IconData(59403, fontFamily: 'MaterialIcons')),
      title: Text('社区')
    ),
    BottomNavigationBarItem(
      icon: Icon(const IconData(59389, fontFamily: 'MaterialIcons')),
      title: Text('我的')
    ),
  ];

  // 类 -页面
  final List<Widget> tabBodies = [
    HomePage(),
    FindPage(),
    NowPage(),
    UserPage(),
  ];
  // 索引
  int currentIndex = 3;
  // 当前项
  var currentPage;

  @override
  void initState() {
    currentPage = tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 初始化 大小（默认）
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
           currentIndex  = index;
           currentPage = tabBodies[currentIndex];
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: tabBodies,
      ),
      // currentPage
    );
  }
}
