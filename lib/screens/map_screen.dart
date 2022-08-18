// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);
  late GoogleMapController _controller;
  final Location _location = Location();

  void _onMapCreated(GoogleMapController cntlr) {
    _controller = cntlr;
    _location.onLocationChanged.listen((l) {
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(l.latitude!, l.longitude!), zoom: 15),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: _initialcameraposition),
              mapType: MapType.normal,
              onMapCreated: _onMapCreated,
              myLocationEnabled: true,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.68),
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(0, 1.2),
                  radius: 1.2,
                  colors: <Color>[
                    Color(0xFF35B73A),
                    Color(0xFF181A20),
                  ],
                ),
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: const Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: const Text(
                          'MY CURRENT LOCATION',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            'Location',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 50,
                        thickness: 2,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const PopUpButtons(
                                  buttonName: 'CREATE \n DESTINATION'),
                              const PopUpButtons(
                                  buttonName: 'ROUTE \n SETTING'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const PopUpButtons(
                                  buttonName: 'HELPING \n FRIEND'),
                              const PopUpButtons(
                                  buttonName: 'DAILY \n ACTIVITY'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PopUpButtons extends StatelessWidget {
  final String buttonName;
  const PopUpButtons({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        primary: const Color(0xFF35B73A),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
