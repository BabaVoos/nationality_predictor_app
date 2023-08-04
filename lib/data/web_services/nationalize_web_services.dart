import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/nationalize.dart';

part 'nationalize_web_services.g.dart';

@RestApi(baseUrl : "https://api.nationalize.io/")
abstract class NationalizeWebServices{
  factory NationalizeWebServices(Dio dio, {String baseUrl}) = _NationalizeWebServices;

  @GET('')
  Future<Nationalize> getData(@Query('name') String name);
}