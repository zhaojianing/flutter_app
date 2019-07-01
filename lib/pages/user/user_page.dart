import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './component/user_top.dart';
import './component/user_member.dart';
import 'component/user_start.dart';
import './component/user_recommend.dart';
import '../../services/service_method.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _getEasyMock();
    return Container(
      width: ScreenUtil().setWidth(750),
      height: 1200.0,
      color: Colors.black12,
      child: Column(
        children: <Widget>[
          UserTop(),
          UserMember(),
          UserStart(),
          UserRecommend(),
        ],
      ),
    );
  }
  void _getEasyMock() async {
    await request('/getimg').then((val) {
      print('Request is : ${val}');
    });
  }
}
