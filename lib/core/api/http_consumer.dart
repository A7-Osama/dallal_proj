import 'package:dallal_proj/core/api/api_consumer.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpConsumer extends ApiConsumer {
  final String baseURL = "https://dalal.ghassanalmoqbeli.com/api-app/api/";

  /// Build headers dynamically
  Map<String, String> _buildHeaders({
    String? token,
    bool withContentType = false,
  }) {
    final headers = <String, String>{};
    if (withContentType) {
      headers['Content-Type'] = 'application/x-www-form-urlencoded';
    }
    if (token != null && token.isNotEmpty && token != 'null') {
      headers['Authorization'] = 'Bearer $token';
    }
    return headers;
  }

  /// Build URI with query parameters
  Uri _buildUri(String path, Map<String, dynamic>? queryParams) {
    final uri = Uri.parse('$baseURL$path');
    return queryParams != null
        ? uri.replace(queryParameters: queryParams)
        : uri;
  }

  /// Handle response safely
  dynamic _handleResponse(
    http.Response response, {
    bool allowNoContent = false,
  }) {
    final statusCode = response.statusCode;
    final body = response.body;

    if (statusCode >= 200 && statusCode < 300) {
      if (allowNoContent && body.isEmpty) return {};
      try {
        return body.isNotEmpty ? jsonDecode(body) : {};
      } catch (_) {
        throw Exception("Response is not valid JSON: $body");
      }
    } else {
      debugPrint("Error $statusCode: $body");
      throw Exception("Request failed with StatusCode $statusCode");
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await http.get(
      _buildUri(path, queryParams),
      headers: _buildHeaders(withContentType: true),
    );
    return _handleResponse(response);
  }

  @override
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await http.post(
      _buildUri(path, queryParams),
      body: data,
      headers: _buildHeaders(),
    );
    return _handleResponse(response);
  }

  @override
  Future<dynamic> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await http.put(
      _buildUri(path, queryParams),
      body: data,
      headers: _buildHeaders(withContentType: true),
    );
    debugPrint("PUT $baseURL$path ::: BODY: $data");
    return _handleResponse(response);
  }

  @override
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await http.patch(
      _buildUri(path, queryParams),
      body: data,
      headers: _buildHeaders(withContentType: true),
    );
    debugPrint("PATCH $baseURL$path ::: BODY: $data");
    return _handleResponse(response, allowNoContent: true);
  }

  @override
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await http.delete(
      _buildUri(path, queryParams),
      headers: _buildHeaders(withContentType: true),
    );
    debugPrint("DELETE $baseURL$path");
    return _handleResponse(response, allowNoContent: true);
  }
}
