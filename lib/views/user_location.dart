import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:provider/provider.dart';
import 'package:screl_machine_test/controllers/user_controller.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserController>(
      builder: (context, provider, _) {
        return OSMFlutter(
          controller: provider.mapController,
          osmOption: const OSMOption(
            userTrackingOption:
                UserTrackingOption(enableTracking: false, unFollowUser: false),
            zoomOption: ZoomOption(
              initZoom: 8,
              minZoomLevel: 3,
              maxZoomLevel: 19,
              stepZoom: 1.0,
            ),
          ),
        );
      },
    );
  }
}
