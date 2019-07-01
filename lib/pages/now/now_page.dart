import 'package:flutter/material.dart';

class NowPage extends StatefulWidget {
  @override
  _NowPageState createState() => _NowPageState();
}

class _NowPageState extends State<NowPage> {
  TextEditingController typeController = TextEditingController();
  String showText = 'copyRight:c 2019';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('发现美好'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: typeController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: '发现美好',
                      helperText: '请输入你要查找到美好'),
                  autofocus: false,
                ),
                RaisedButton(
                  onPressed: (){},
                  child: Text('选择完毕'),
                ),
                Text(
                  showText,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                )
              ],
            ),
          ),
        ));
  }
}
