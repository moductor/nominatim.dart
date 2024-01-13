import "dart:convert";

import "package:http/http.dart";
import "package:latlong2/latlong.dart";

import "../../nominatim.dart";
import "../constants.dart";

Future<Place> searchPosition(LatLng position) async {
  final params = {
    "format": "jsonv2",
    "zoom": "18",
    "lat": position.latitude.toString(),
    "lon": position.longitude.toString(),
  };

  final res = await get(Uri.https(apiHost, "/reverse", params));
  final body = utf8.decode(res.bodyBytes);
  final data = jsonDecode(body) as Map<String, dynamic>;

  return Place.fromJson(data);
}

Future<Address> positionToAddress(LatLng position) async {
  final place = await searchPosition(position);
  return place.address;
}
