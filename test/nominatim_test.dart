import "package:latlong2/latlong.dart";
import "package:nominatim/nominatim.dart";
import "package:test/test.dart";

void main() async {
  group("Methods", () {
    test("addressToPosition", () async {
      final position = await addressToPosition("vaclavske namesti 68 praha");
      expect(position, equals(LatLng(50.0792052, 14.4305757)));
    });

    test("addressToPosition", () async {
      final address = await positionToAddress(LatLng(50.0792052, 14.4305757));
      expect(address.settlementName, equals("Hlavní město Praha"));
      expect(address.road, equals("Václavské náměstí"));
    });
  });
}
