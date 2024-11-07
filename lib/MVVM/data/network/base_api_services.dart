abstract class BaseApiServices {
  Future<dynamic> getAPi(String url);
  Future<dynamic> postAPi(dynamic data, String url);
}
