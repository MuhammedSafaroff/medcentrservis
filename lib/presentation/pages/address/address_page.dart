import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../../core/app_theme/app_theme.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  final Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor? icon;

  bool loading = true;
  Set<Marker> markers = {};
  List<LatLng> startLocation = const [
    LatLng(55.6659015, 37.5472516),
    LatLng(55.6659015, 37.5472516),
    LatLng(55.6693747, 37.548582),
    LatLng(55.6693747, 37.548582),
    LatLng(55.6693747, 37.548582),
    LatLng(55.6692969, 37.5434852),
    LatLng(55.665542, 37.5446277),
    LatLng(55.665542, 37.5446277),
    LatLng(55.6666881, 37.5567238),
    LatLng(55.6666881, 37.5567238),
    LatLng(55.6666881, 37.5567238),
    LatLng(55.6666881, 37.5567238),
  ];

  List<String> images = const [
    "assets/images/address1.png",
    "assets/images/address2.png",
    "assets/images/address3.png",
    "assets/images/address1.png",
    "assets/images/address2.png",
    "assets/images/address3.png",
  ];
  CameraPosition? _kGooglePlex;

  Future<void> getIcons() async {
    var icon = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(devicePixelRatio: 3.2),
        "assets/images/marker.png");
    setState(() {
      this.icon = icon;
      createMarkers();
    });
  }

  @override
  void initState() {
    _kGooglePlex = const CameraPosition(
      target: LatLng(55.6693747, 37.548582),
      zoom: 14.4746,
    );
    getIcons();

    super.initState();
  }

  createMarkers() {
    for (var i = 0; i < startLocation.length; i++) {
      markers.add(
        Marker(
          markerId: const MarkerId("MarkerCurrent"),
          position: startLocation[i],
          icon: icon!,
          infoWindow: const InfoWindow(
              title: "Клиника на Новых Черемушках", snippet: "text"),
          // draggable: true,
        ),
      );
      if (i == startLocation.length - 1) {
        loading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final appTheme = AppTheme.of(context);

    return Column(
      children: [
        loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SizedBox(
                height: 340.h,
                width: maxWidth,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex!,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: markers,
                ),
              ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
            child: ListView(
              children: [
                Text(
                  "Адреса и телефоны клиник",
                  style: appTheme.typography.spMedium500.copyWith(
                    fontSize: 23.w,
                    color: appTheme.colors.mainSolid,
                  ),
                ),
                SizedBox(height: 20.h),
                for (var i = 0; i < images.length; i++)
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Row(
                      children: [
                        Image.asset(
                          images[i],
                          width: 173.w,
                        ),
                        SizedBox(width: 20.w),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Клиника в Митино",
                                style: appTheme.typography.spMedium500.copyWith(
                                  fontSize: 18.w,
                                  color: appTheme.colors.mainSolid,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "ул. Митинская, дом 28, корп. 3",
                                style:
                                    appTheme.typography.spRegular400.copyWith(
                                  fontSize: 12.w,
                                  color: appTheme.colors.bodyTextColor,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "+7 (495) 431-91-11",
                                style:
                                    appTheme.typography.spSemiBold600.copyWith(
                                  fontSize: 14.w,
                                  color: appTheme.colors.secondarySolid,
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "9:00 - 21:00",
                                style:
                                    appTheme.typography.spRegular400.copyWith(
                                  fontSize: 12.w,
                                  color: appTheme.colors.bodyTextColor,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
