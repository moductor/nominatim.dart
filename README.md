# nominatim

Dart wrapper for [OpenStreetMap Nominatim API](https://nominatim.org/).

---

`nominatim` provides a Dart wrapper for the OpenStreetMap Nominatim API for
geocoding.

## Usage

```dart
import "package:latlong2/latlong.dart";
import "package:nominatim/nominatim.dart";

void main() async {
  final position = await addressToPosition("vaclavske namesti 68 praha");
  // LatLng(50.0792052, 14.4305757)

  final address = await positionToAddress(LatLng(50.0792052, 14.4305757));
  // Národní muzeum, 68, Václavské náměstí, Nové Město, Praha 1,
  // Hlavní město Praha, Praha, 110 00, Česko
}
```
