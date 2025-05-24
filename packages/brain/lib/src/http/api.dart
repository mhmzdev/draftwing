import 'package:brain/src/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/foundation.dart';

part 'helpers.dart';
part 'urls.dart';

sealed class BaseApi {
  late final Dio _instance;
  Dio get instance => _instance;

  BaseApi({
    required String baseUrl,
    Map<String, dynamic>? headers,
    Duration connectTimeout = const Duration(seconds: 30),
    Duration receiveTimeout = const Duration(seconds: 30),
  }) {
    final options = BaseOptions(
      contentType: 'application/json',
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      baseUrl: baseUrl,
      headers: headers,
    );

    _instance = Dio(options);
    if (kDebugMode) {
      _instance.interceptors.add(AppAlice.getDioInterceptor());
    }
  }
}

class MediumApi extends BaseApi {
  static final MediumApi _ins = MediumApi._();
  static MediumApi get ins => _ins;

  MediumApi._() : super(baseUrl: URLs.baseMedium);
}

class DevToApi extends BaseApi {
  static final DevToApi _ins = DevToApi._();
  static DevToApi get ins => _ins;

  DevToApi._()
    : super(
        baseUrl: URLs.baseDevTo,
        headers: {'api-key': dotenv.env['DEV_TO_API_KEY']!},
      );
}
