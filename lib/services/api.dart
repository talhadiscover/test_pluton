import 'package:http/http.dart' as http;
class API {
  var client = http.Client();
  static var baseurl = Uri.parse("https://gymgo.tectems.com");
  static var allgymssss = "/gym/all-gyms";
  static var imgbaseurl =  "https://gymgo.tectems.com/uploads/" ;

  Future allgyms() async {
    Map<String, String> headerss = {
      "Content-Type": "application/json; charset=utf-8"};
    // "Authorization": tokenType.read('tokenType') + " " +token.read('token'),};
    var endPoint = Uri.parse("$baseurl$allgymssss");
    var response = await client.get(endPoint, headers: headerss);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return response.body;
    }
  }
}