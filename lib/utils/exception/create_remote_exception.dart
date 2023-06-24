import 'dart:io';

import 'package:alo_moves/utils/exception/app_exception.dart';
import 'package:dio/dio.dart';

RemoteException createRemoteException(Object exception) {
  if (exception is DioException) {
    switch (exception.response?.statusCode) {
      case HttpStatus.badRequest:
        return BadRequestException();
      case HttpStatus.unauthorized:
        return UnauthorizedException();
      case HttpStatus.forbidden:
        return ForbiddenException();
      case HttpStatus.notFound:
        return NotFoundException();
      case HttpStatus.requestTimeout:
        return RequestTimeoutException();
      case HttpStatus.internalServerError:
        return InternalServerErrorException();
      case HttpStatus.serviceUnavailable:
        return ServiceUnavailableException();
      default:
        return UnknownRemoteException();
    }
  } else if (exception is SocketException) {
    return NoInternetConnectionException();
  } else {
    return UnknownRemoteException();
  }
}
