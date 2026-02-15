abstract class ApiConsumer {
  Future<dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  });
  Future<dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  });
  Future<dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  });
  Future<dynamic> put(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  });
  Future<dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParams,
  });
}
