import 'package:clima/screens/location_screen.dart';
import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';
import 'package:http/http.dart' as http;


const spinkit = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
);
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocationData() async{
    var data = await WeatherModel().getLocationWeather();
    if(data==null){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return LocationScreen(nullData);
      }));
    }
    else{Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(data);
    }));}
  }



  @override
  void initState()  {
    super.initState();
    getLocationData();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          spinkit,
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text("if it is stuck that means your internet is down.",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
