class Address {
  final String? country;
  final String? countryCode;
  final String? municipality;
  final String? city;
  final String? town;
  final String? village;
  final String? suburb;
  final String? neighbourhood;
  final String? road;
  final String? houseNumber;
  final String? postcode;

  Address({
    this.country,
    this.countryCode,
    this.municipality,
    this.city,
    this.town,
    this.village,
    this.suburb,
    this.neighbourhood,
    this.road,
    this.houseNumber,
    this.postcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      country: json["country"],
      countryCode: json["country_code"],
      municipality: json["municipality"],
      city: json["city"],
      town: json["town"],
      village: json["village"],
      suburb: json["suburb"],
      neighbourhood: json["neighbourhood"],
      road: json["road"],
      houseNumber: json["house_number"],
      postcode: json["postcode"],
    );
  }

  String? get settlementName {
    return city ?? town ?? village;
  }
}
