import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50.0),
      color: Colors.greenAccent,
      width: ScreenUtil().setWidth(750),
      child: Column(
        children: <Widget>[
          _setting(),
          _banner(),
        ],
      ),
    );
  }

  // 用户设置
  Widget _setting() {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.only(right: 10.0),
      child: Text('设置'),
    );
  }
  // 用户主体
  Widget _banner() {
    return Container(
      padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 30.0),
      child: Row(
        children: <Widget>[
          _userImg(),
          _userInformation(),
          _userMore(),
        ],
      ),
    );
  }
  // 用户头像
  Widget _userImg() {
    return Container(
      width: ScreenUtil().setWidth(140),
      child: Image.network(
        'https://user-gold-cdn.xitu.io/2019/1/30/1689d0b04e41f94d?imageView21/w/90/h/90/q/85/format/webp/interlace/1',
        fit: BoxFit.cover,
      )
    );
  }
  // 用户信息
  Widget _userInformation() {
    return Container(
      width: ScreenUtil().setWidth(500),
      padding: EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("言茶"),
          Text("小茶童"),
          Text("T币：0"),
        ],
      ),
    );
  }
  // 进入个人页面
  Widget _userMore() {
    return Container(
      child: Icon(
        Icons.arrow_right,
        color: Colors.black45,
        size: 30.0,
      ),
    );
  }
}
