import 'package:booklyapp/constant.dart';
import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.bigbookapi.com/search-books?api-key=$kapikey';
  final Dio dio;
  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var response = await dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
