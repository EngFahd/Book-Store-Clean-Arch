import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timeout with ApiServer");

      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with ApiServer");

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with ApiServer");

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure("Request to ApiServer was cancelled");

      case DioExceptionType.connectionError:
        return ServerFailure("check your internet!");

      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure("No Internet Connection,check your internet!");
        } else {
          return ServerFailure("Unexpected Error ,please try again!");
        }

      default:
        return ServerFailure("Opps There was an Error,please try again!");
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      // its vary
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
