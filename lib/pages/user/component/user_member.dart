import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        children: <Widget>[
          _momberIcon(),
          _momberText(),
          _momberMore(),
        ],
      ),
    );
  }

  // 会员头像
  Widget _momberIcon() {
    return Container(
      width: ScreenUtil().setWidth(80),
      child: Image.network(
        'https://user-gold-cdn.xitu.io/2019/1/30/1689d0b04e41f94d?imageView21/w/90/h/90/q/85/format/webp/interlace/1',
        fit: BoxFit.cover,
      )
    );
  }
  // 会员信息
  Widget _momberText() {
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      width: ScreenUtil().setWidth(500),
      child: Text(
        "成为言茶会员",
        style: TextStyle(
          color: Colors.orangeAccent,
          fontSize: ScreenUtil().setSp(30),
          fontWeight:FontWeight.bold
        ),
      ),
    );
  }

  // 进入会员界面
  Widget _momberMore() {
    return Container(
      width: ScreenUtil().setWidth(80),
      child: Icon(
        Icons.arrow_right,
        color: Colors.orangeAccent,
        size: ScreenUtil().setSp(60),
      ),
    );
  }

}
