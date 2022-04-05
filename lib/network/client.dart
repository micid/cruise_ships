import 'package:cruise_ships/network/data/network_exception.dart';
import 'package:dio/dio.dart';

import '../model/ship.dart';
import 'data/api_result.dart';

abstract class Client {
  Future<ApiResult<Ship>> getShipData({required String name});
}

class ClientFake implements Client {
  late ApiResult<Ship> _mockValue;

  void mock({required ApiResult<Ship> apiResult}) {
    _mockValue = apiResult;
  }

  @override
  Future<ApiResult<Ship>> getShipData({required String name}) async {
    return _mockValue;
  }
}

class ClientDio implements Client {
  late Dio _dio;

  ClientDio({
    required String baseUrl,
    required int connectTimeout,
    required int receiveTimeout,
  }) {
    _dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout));
  }

  @override
  Future<ApiResult<Ship>> getShipData({required String name}) async {
    try {
      Response response = await _dio.get('/$name');
      Ship result = Ship.fromJson(response.data);
      return ApiResult.success(data: result);
    } on DioError catch (_) {
      return const ApiResult.failure(error: NetworkException.dioException());
    }
  }
}
