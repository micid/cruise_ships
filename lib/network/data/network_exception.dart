import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
abstract class NetworkException with _$NetworkException {
  const factory NetworkException.noInternetConnection() = NoInternetConnection;
  const factory NetworkException.formatException() = FromatException;
  const factory NetworkException.dioException() = DioException;
  const factory NetworkException.unexpectedError() = UnexpectedError;

  static NetworkException getException(error) {
    if (error is Exception) {
      try {
        NetworkException networkException;
        if (error is SocketException) {
          networkException = const NetworkException.noInternetConnection();
        } else {
          networkException = const NetworkException.dioException();
        }
        return networkException;
      } on FormatException {
        return const NetworkException.formatException();
      } catch (_) {
        return const NetworkException.unexpectedError();
      }
    }
    return const NetworkException.unexpectedError();
  }

  static String getErrorMessage(NetworkException networkException) {
    var errorMessage = '';
    networkException.when(
      noInternetConnection: () {
        errorMessage = 'No internet connection';
      },
      formatException: () {
        errorMessage = 'Format exception';
      },
      dioException: () {
        errorMessage = 'Dio Exception';
      },
      unexpectedError: () {
        errorMessage = 'Unexpected error';
      },
    );
    return errorMessage;
  }
}
