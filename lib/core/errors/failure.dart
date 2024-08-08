import 'package:dio/dio.dart';

abstract class Failure {
  final String errmassage;

  const Failure(this.errmassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errmassage);
  factory ServerFailure.fromDioerror(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection TImeout with Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send TImeout with Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive TImeout with Server');
      case DioExceptionType.badCertificate:
        return ServerFailure('Badcertivicate');
      case DioExceptionType.badResponse:
        return ServerFailure.formResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to  Server was canceled ');
      case DioExceptionType.connectionError:
        return ServerFailure('there is Connection Error , please try again!');
      case DioExceptionType.unknown:
        if (dioerror.message!.contains('SocketException')) {
          return ServerFailure('No internet Connection');
        }
        return ServerFailure('Unexpected Error ,please try again leter!');
      default:
        return ServerFailure('Oops there was an Error , plase try Again!');
    }
  }
  factory ServerFailure.formResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFailure(response.toString());
    } else if (statuscode == 500) {
      return ServerFailure('your request Not found , please try again!');
    } else if (statuscode == 500) {
      return ServerFailure('Internal Server error , please try leter!');
    } else {
      return ServerFailure('Oops there was an Error , plase try Again!');
    }
  }
}
