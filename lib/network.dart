import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelp {
  NetworkHelp({this.link1, this.link2});
  final String link1;
  final String link2;
  var n = 37;
  Future covidVskpData() async {
    Response r1 = await get(link1);

    if (r1.statusCode == 200) {
      var VskpData = r1.body;
      return (jsonDecode(VskpData));
    }
  }

  Future covidAPData() async {
    Response r2 = await get(link2);
    if (r2.statusCode == 200) {
      var ApData = r2.body;
      var k = jsonDecode(ApData);
      return (k);
    } else
      return (r2.statusCode);
  }

  Future Checknum() async {
    Response r2 = await get(link2);
    var NumData = jsonDecode(r2.body);
    for (var i = 0; i <= n; i++) {
      if (NumData['statewise'][i]['state'] == "Andhra Pradesh") {
        return i;
        break;
      }
    }
  }
}
