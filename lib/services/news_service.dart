import 'package:http/http.dart';

import '../utils/api.dart';

class NewsService{
  String KeyAPI = '373d2ae882mshe92495ba04992a7p10d8fejsn041808cbe8eb';
  String HostAPI = 'apidojo-yahoo-finance-v1.p.rapidapi.com';

  Future<Response> getNewsList() async{
    Response res = await post(
      Uri.parse(ConstantAPI.newsList),
      headers: <String, String>{
        'X-RapidAPI-Key' : '$KeyAPI',
        'X-RapidAPI-Host': '$HostAPI',
      },
    );

    return res;
  }

  Future<Response> getNewsGetDetails(String id) async{
    Response res = await get(
      Uri.parse(ConstantAPI.newsGetDetails).replace(
          queryParameters: {'uuid': '$id',}
    ),
      headers: <String, String>{
        'X-RapidAPI-Key' : '$KeyAPI',
        'X-RapidAPI-Host': '$HostAPI',
      }
    );
    return res;
  }
}