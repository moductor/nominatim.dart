import "dart:convert";

import "package:http/http.dart";
import "package:latlong2/latlong.dart";

import "../constants.dart";
import "../models/place.dart";

Future<List<Place>> searchPlaces(String query) async {
  final params = {
    "format": "jsonv2",
    "addressdetails": "1",
    "q": query,
  };

  final res = await get(Uri.https(apiHost, "/search", params));
  final body = utf8.decode(res.bodyBytes);
  final data = jsonDecode(body) as List<dynamic>;

  final places = data.map((e) => Place.fromJson(e)).toList();
  return places.where((e) => e.type == "house").toList();
}

Future<LatLng> addressToPosition(String query) async {
  final places = await searchPlaces(query);
  final firstPlace = places.first;
  return firstPlace.position;
}
