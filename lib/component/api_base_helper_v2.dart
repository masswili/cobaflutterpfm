import 'package:http/http.dart' as http;

class ApiBaseHelperv2 {
  static const String baseUrl = 'https://pfm-api.rodd-it.my.id/api/';

  Future<http.Response> getHttp(String url) async {
    return await http.get(
      Uri.parse(baseUrl + url),
      headers: <String, String>{
        "Content-Type": "application/json",
        "headerApiKey": "PFM~API/",
        "Access-Control-Allow-Origin": "*",
        "Accept": "*/*"
      },
    );
  }

  Future<http.Response> postHttp(String url, dynamic data) async {
    return await http.post(Uri.parse(baseUrl + url),
        headers: <String, String>{
          "Content-Type": "application/json",
          "headerApiKey": "PFM~API/",
          "Access-Control-Allow-Origin": "*",
          "Accept": "*/*"
        },
        body: data);
  }
}
