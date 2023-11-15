import 'package:geolocator/geolocator.dart';

class Location{
  Position _Location;
  double longitude;
  double latitude;

  Location();

  Future<void> getCurrentLocation() async {
    try{
      _Location = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      longitude = _Location.longitude;
      latitude = _Location.latitude;
    }
    catch(e){
      print(e);
    }
  }
}
