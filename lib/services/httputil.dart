import 'package:dio/dio.dart';

Dio HttpUtil() {
  Dio dio = new Dio();
  print('Dio config BaseOptions...');
  // 或者通过传递一个 `options`来创建dio实例
  BaseOptions options = new BaseOptions(
    // 请求基地址,可以包含子路径，如: "https://www.google.com/api/".
    baseUrl: "https://www.easy-mock.com/mock/5cd9668a6714207c8aa606d9/example",
    
    //连接服务器超时时间，单位是毫秒.
    connectTimeout: 10000,
    
    ///  响应流上前后两次接受到数据的间隔，单位为毫秒。如果两次间隔超过[receiveTimeout]，
    ///  [Dio] 将会抛出一个[DioErrorType.RECEIVE_TIMEOUT]的异常.
    ///  注意: 这并不是接收数据的总时限.
    receiveTimeout: 3000,
    headers: {
      // contentType: ContentType.parse('application/x-www-form-urlencoded'),
    },
  );
  dio = new Dio(options);
  return dio;
}
