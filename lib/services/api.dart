import 'package:http/http.dart' as http;
class API {
  var client = http.Client();
   static const apikey = '39cf98d7db1ad3069227393fa6315d10';
  var baseurl = '39cf98d7db1ad3069227393fa6315d10';
  var allgymssss = 'https://api.themoviedb.org/3/trending/all/day?api_key=${apikey}';
  Future allgyms() async {
    Map<String, String> headerss = {
      "Content-Type": "application/json; charset=utf-8"};
    // "Authorization": tokenType.read('tokenType') + " " +token.read('token'),};
    var endPoint = Uri.parse("$allgymssss");
    var response = await client.get(endPoint, headers: headerss);
    print('response400${response.body}');
    if (response.statusCode == 200) {
      return response.body;
    } else {
      print('response500${response.body}');
      return response.body;
    }
  }
}