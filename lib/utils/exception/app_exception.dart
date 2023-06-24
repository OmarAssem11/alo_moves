import 'package:alo_moves/generated/l10n.dart';

abstract class AppException implements Exception {
  late final String message;

  AppException([String? msg]) : message = msg ?? S.current.somethingWentWrong;
}

abstract class RemoteException extends AppException {
  RemoteException([super.msg]);
}

abstract class LocalException extends AppException {}

abstract class ValidationException extends AppException {
  ValidationException([super.msg]);
}

abstract class AssetsException extends AppException {}

abstract class EnumValueException extends AppException {}

class BadRequestException extends RemoteException {}

class UnauthorizedException extends RemoteException {}

class ForbiddenException extends RemoteException {}

class NotFoundException extends RemoteException {}

class RequestTimeoutException extends RemoteException {}

class ServiceUnavailableException extends RemoteException {}

class InternalServerErrorException extends RemoteException {}

class NoInternetConnectionException extends RemoteException {
  NoInternetConnectionException() : super(S.current.noInternetConnection);
}

class UnknownRemoteException extends RemoteException {}

class CacheException extends LocalException {}

class LoadFileException extends AssetsException {}
