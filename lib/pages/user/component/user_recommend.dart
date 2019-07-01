import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserRecommend extends StatelessWidget {
  List userRecommendData = [
    {
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "热门活动",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "我的收藏",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "最近浏览",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "离线缓存",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "直播中心",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "成为会员",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "我的钱包",
    },{
      "icon": "Icon(Icons.arrow_right,color: Colors.black45,size: 30.0,),",
      "text": "反馈建议",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(340),
      color: Colors.white,
      margin: EdgeInsets.only(top: 10.0),
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        padding: EdgeInsets.all(5.0),
        children: userRecommendData.map((item) {
          return _gridViewItemUi(context, item);
        }).toList(),
      ),
    );
  }

  // 用户推荐栏
  Widget _gridViewItemUi(BuildContext context, item) {
    return InkWell(
      onTap: () {
        print('on click tab');
      },
      child: Container(
        child: Column(children: <Widget>[
          Icon(
            Icons.arrow_right,
            color: Colors.orangeAccent,
            size: ScreenUtil().setSp(60),
          ),
          Text(item['text'])
        ],),
      )
    );
  }
}
