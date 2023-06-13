import 'package:dio/dio.dart';

abstract class Failure {
  String errMsg;
  Failure({required this.errMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMsg});

  factory ServerFailure.fromDioError(DioError dioerror) {
    switch (dioerror.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure(errMsg: 'Connection Timeout');
      case DioErrorType.sendTimeout:
        return ServerFailure(errMsg: 'Send Timeout');
      case DioErrorType.receiveTimeout:
        return ServerFailure(errMsg: 'Receive Timeout');
      case DioErrorType.badCertificate:
        return ServerFailure(errMsg: 'Bad Certificate');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioerror.response!.statusCode!, dioerror.response!.data);
      case DioErrorType.cancel:
        return ServerFailure(errMsg: 'cancel');
      case DioErrorType.connectionError:
        return ServerFailure(errMsg: 'Connection Error');
      case DioErrorType.unknown:
        return ServerFailure(errMsg: 'unknown');
      default:
        return ServerFailure(errMsg: 'There is an Error ,Try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMsg: 'Not Found');
    } else if (statusCode == 500) {
      return ServerFailure(errMsg: 'Internet Server Error');
    } else {
      return ServerFailure(errMsg: 'There is an Error');
    }
  }
}
