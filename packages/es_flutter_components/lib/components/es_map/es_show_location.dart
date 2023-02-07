


import 'package:es_flutter_components/components/es_spacer/es_v_spacer.dart';
import 'package:es_flutter_components/resources/structure_builder.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:url_launcher/url_launcher.dart';

class EsShowLocation extends StatefulWidget {
  double? latitude;
  double? longitude;
  int? initialZoomLevel;
  double? maxZoomLevel;

   EsShowLocation({Key? key,
   this.latitude,
     this.longitude,
     this.initialZoomLevel,
     this.maxZoomLevel,

   }) : super(key: key);

  @override
  _EsShowLocationState createState() => _EsShowLocationState();
}

class _EsShowLocationState extends State<EsShowLocation> {

  late double _latitude;
  late double _longitude;
  late int _initialZoomLevel;
  late double _maxZoomLevel;

  late MapZoomPanBehavior _zoomPanBehavior;
  @override
  void initState() {
    // TODO: implement initState

     _latitude=widget.latitude??30.291314113953575;
     _longitude=widget.longitude??57.067726807889755;
     _initialZoomLevel=widget.initialZoomLevel??13;
     _maxZoomLevel=widget.maxZoomLevel??18;


    _zoomPanBehavior = MapZoomPanBehavior(
        enableDoubleTapZooming: true,
    enablePanning: true,
      maxZoomLevel: _maxZoomLevel

    );

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
     // final LocationData currentLocation = LocationData(LatLng(29.619307268182446, 52.524025272119665));
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(

        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              child: Image.asset(
                  "packages/es_flutter_components/assets/images/baladmap.png",
                width: StructureBuilder.dims!.h2IconSize,
                height: StructureBuilder.dims!.h2IconSize,
              ),
              onPressed: () async {
              await launchUrl(Uri.parse("https://balad.ir/location?latitude=$_latitude&longitude=$_longitude&zoom=16.5"));
            },),
            EsVSpacer(big: true,),
            FloatingActionButton(
              child: Image.asset(
                  "packages/es_flutter_components/assets/images/googlemap.png",
                width: StructureBuilder.dims!.h1IconSize,
                height: StructureBuilder.dims!.h1IconSize,
              ),
              onPressed: () async {
              await launchUrl(Uri.parse("https://maps.google.com/?ll=$_latitude,$_longitude"));
            },),
          ],
        ),
        body: SfMaps(
          layers: [
            MapTileLayer(
              zoomPanBehavior: _zoomPanBehavior,
              initialFocalLatLng: MapLatLng(
                  _latitude, _longitude),
              initialZoomLevel: _initialZoomLevel,
              initialMarkersCount: 1,
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              markerBuilder: (BuildContext context, int index) {
                return MapMarker(
                  latitude: _latitude,
                  longitude:_longitude,
                  child: Icon(
                    Icons.location_on,
                    color: Colors.red[800],
                  ),
                  size: Size(20, 20),
                );
              },
            ),
          ],
        ),
      ),
    );
  }




}
