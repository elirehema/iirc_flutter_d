

import 'package:amala_statistics/api/mobile_data_interceptor.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper/chopper.dart' as prefix0;
part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class PostApiService extends ChopperService{

  @Get()
  Future<Response> getPosts();

  @Get(path: '/{id}')
  Future<Response> getPost(@Path('id') int id);
  

  @Post()
  Future<Response> postPost(
    @Body() Map<String, dynamic> body,
  );

  static PostApiService create(){
    final client = prefix0.ChopperClient(baseUrl: 'https://jsonplaceholder.typicode.com',
    services: [
      _$PostApiService(),
    ],
    converter: prefix0.JsonConverter(),
    interceptors: [
      HeadersInterceptor({'Cache-Control': 'no-cache'}),
      HttpLoggingInterceptor(),
      //prefix0.CurlInterceptor(),
      MobileDataInterceptor()
    ],
    );

    return _$PostApiService(client);
  }

}