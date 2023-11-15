import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkHelper{
  NetworkHelper(this.URL);
  final String URL;

  Future getData() async{
    http.Response r = await http.get(Uri.parse(URL));
    if(r.statusCode ==200){
      String data  =r.body;
      return jsonDecode(data);
    }
    else{
      print(r.statusCode);
    }
  }
}