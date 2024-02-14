import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ReservationTrackController extends GetxController {
  String? mapStyle;
   bool showMap = false;
  Set<Marker> markers = {};
  GoogleMapController? mapController;
 late CameraPosition initialCameraPosition ;
 bool isLight=true;

  changeMarkerPosition(LatLng? position) {
    markers.add(Marker(
        markerId: const MarkerId('1'),
        position: LatLng(position!.latitude, position.longitude)));
    update();
  }


mapVisibility(){

showMap=!showMap;
  update();
}


toggleMapTheme(){

  isLight=!isLight;
  update();
}



  @override
  void onInit() async {

initialCameraPosition= const CameraPosition(
    target: LatLng(31.053558472894615, 31.409808272765183),
    zoom: 15.5,
  );
    super.onInit();
  }

  @override
  void dispose() {
    mapController!.dispose();
    super.dispose();
  }
}
