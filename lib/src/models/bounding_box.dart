import "package:latlong2/latlong.dart";

class BoundingBox {
  final LatLng min;
  final LatLng max;

  BoundingBox({required this.min, required this.max});

  factory BoundingBox.fromRawValues({
    required double minLat,
    required double maxLat,
    required double minLon,
    required double maxLon,
  }) {
    return BoundingBox(
      min: LatLng(minLat, minLon),
      max: LatLng(maxLat, maxLon),
    );
  }

  factory BoundingBox.fromRawValueList(List<double> values) {
    assert(values.length == 4);
    return BoundingBox.fromRawValues(
      minLat: values[0],
      maxLat: values[1],
      minLon: values[2],
      maxLon: values[3],
    );
  }

  factory BoundingBox.fromJsonArray(List<dynamic> json) {
    return BoundingBox.fromRawValueList(json.cast<double>());
  }

  factory BoundingBox.fromJsonStringArray(List<dynamic> json) {
    return BoundingBox.fromJsonArray(json.map((e) => double.parse(e)).toList());
  }
}
