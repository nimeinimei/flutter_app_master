
import 'package:dio/dio.dart';
import 'package:flutter_app_master/api/api.dart';
import 'package:flutter_app_master/utils/JsonUtils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RequestUtil {
  static Dio _dio;

  static Dio getInstance() {
    if (_dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: Api.baseUrl,
        connectTimeout: 5000,
        receiveTimeout: 10000,
      );
      _dio = new Dio(options);
      _dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) {
//        print('=============================request============================');
//        print('url:${options.uri}');
//        print('method ${options.method}');
//        print('headers:${options.headers}');
//        print('data:\n${options.data}');
//        print('queryParameters:\n${options.queryParameters}');
        return options;
      }, onResponse: (Response response) {
        JsonUtil.printRequest(response);
        JsonUtil.printRespond(response);
//        print('=============================response============================');
//        print('url:${response.request.uri}');
//        debugPrint('response:${response.data}');
        return response;
      }, onError: (DioError e) {
        print('Error url:${e.request.uri}');
        return e;
      }));
    }
    return _dio;
  }
  ///请求api
  static Future<Map> request(String url,{data,method}) async{
    data = data ?? {};
    method = method ?? "get";
    var dio = getInstance();

    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
//    print(sharedPreferences.getString('userName'));
//    print(sharedPreferences.getString('adminToken'));
    dio.options.headers={"userName":sharedPreferences.getString("userName"),
      "adminToken":sharedPreferences.getString("adminToken")};

    var res;
    if(method=="get"){
      var response =await dio.get(url);
      res=response.data;
    }else if(method=="post"){
      var response=await dio.post(url,data: data);
      res=response.data;
    }
//    print(res.toString());
    return res;
  }
  ///get
  static Future<Map> get(url,data)=>request(url,data:data);
  ///post
  static Future<Map> post(url,data)=>request(url,data: data,method: "post");
}
