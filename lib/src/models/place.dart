import "package:latlong2/latlong.dart";

import "address.dart";
import "bounding_box.dart";

class Place {
  final int placeId;
  final String osmType;
  final int osmId;
  final BoundingBox boundingbox;
  final LatLng position;
  final String displayName;
  final String category;
  final String type;
  final Address address;

  Place({
    required this.placeId,
    required this.osmType,
    required this.osmId,
    required this.boundingbox,
    required this.position,
    required this.displayName,
    required this.category,
    required this.type,
    required this.address,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      placeId: json["place_id"],
      osmType: json["osm_type"],
      osmId: json["osm_id"],
      boundingbox: BoundingBox.fromJsonArray(json["boundingbox"]),
      position: json["position"],
      displayName: json["display_name"],
      category: json["category"],
      type: json["type"],
      address: Address.fromJson(json["address"]),
    );
  }
}
