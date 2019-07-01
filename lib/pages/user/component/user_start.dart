import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserStart extends StatelessWidget {
  List userStartData = [
    {
      "num": "0",
      "text": "文章",
    },
    {
      "num": "0",
      "text": "动态",
    },
    {
      "num": "0",
      "text": "关注",
    },
    {
      "num": "0",
      "text": "粉丝",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(100),
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: userStartData.length,
        padding: EdgeInsets.all(5.0),
        children: userStartData.map((item) {
          return _gridViewItemUi(context, item);
        }).toList(),
      ),
    );
  }

  // 用户关注栏
  Widget _gridViewItemUi(BuildContext context, item) {
    return InkWell(
      onTap: () {
        print('on click tab');
      },
      child: Column(children: <Widget>[
        Text(item['num']),
        Text(item['text'])
      ],),
    );
  }
}
