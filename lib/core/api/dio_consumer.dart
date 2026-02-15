import 'package:dallal_proj/core/api/api_consumer.dart';
import 'package:dallal_proj/core/errors/dio_xcept.dart';
import 'package:dio/dio.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;

  DioConsumer({required this.dio});

  @override
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.post(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.patch(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.put(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await dio.delete(
        path,
        data: data,
        queryParameters: queryParams,
      );
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
