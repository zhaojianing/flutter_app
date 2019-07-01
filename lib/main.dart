import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './provide/index_provide.dart';
import 'package:fluro/fluro.dart';
import './routers/routers.dart';
import './routers/application.dart';


// void main() => runApp(MyApp());
void main(){
  var indexProvide = IndexProvide();
  var providers = Providers();
  providers
    ..provide(Provider<IndexProvide>.value(indexProvide));
  runApp(ProviderNode(child:MyApp(),providers:providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);

    // router
    final router = Router();
    Routes.configureRoutes(router);
    Application.router= router;

    return Container(
      child: MaterialApp(
        title: '言茶',
        debugShowCheckedModeBanner: false, // 取消debugger
        theme: ThemeData(
          primaryColor: Color.fromRGBO(217, 58, 73, 1)
        ),
        home: IndexPage(),
      ),
    );
  }
}
