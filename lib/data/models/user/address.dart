import 'package:equatable/equatable.dart';

import 'coordinates.dart';

class Address extends Equatable {
  final String? name;
  final String? googleId;
  final String? street;
  final String? apartmentNumber;
  final String? city;
  final String? zip;
  final String? state;
  final String? country;
  final List<dynamic>? phone;
  final String? phoneExtension;
  final List<dynamic>? email;
  final String? fax;
  final List<dynamic>? contacts;
  final String? website;
  final Coordinates? coordinates;
  final bool? coordinatesFound;
  final dynamic verifiedCoordinates;
  final dynamic checkedWithNtk;

  const Address({
    this.name,
    this.googleId,
    this.street,
    this.apartmentNumber,
    this.city,
    this.zip,
    this.state,
    this.country,
    this.phone,
    this.phoneExtension,
    this.email,
    this.fax,
    this.contacts,
    this.website,
    this.coordinates,
    this.coordinatesFound,
    this.verifiedCoordinates,
    this.checkedWithNtk,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        name: json['Name'] as String?,
        googleId: json['GoogleId'] as String?,
        street: json['Street'] as String?,
        apartmentNumber: json['ApartmentNumber'] as String?,
        city: json['City'] as String?,
        zip: json['Zip'] as String?,
        state: json['State'] as String?,
        country: json['Country'] as String?,
        phone: json['Phone'] as List<dynamic>?,
        phoneExtension: json['PhoneExtension'] as String?,
        email: json['Email'] as List<dynamic>?,
        fax: json['Fax'] as String?,
        contacts: json['Contacts'] as List<dynamic>?,
        website: json['Website'] as String?,
        coordinates: json['Coordinates'] == null
            ? null
            : Coordinates.fromJson(json['Coordinates'] as Map<String, dynamic>),
        coordinatesFound: json['CoordinatesFound'] as bool?,
        verifiedCoordinates: json['VerifiedCoordinates'] as dynamic,
        checkedWithNtk: json['CheckedWithNtk'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'Name': name,
        'GoogleId': googleId,
        'Street': street,
        'ApartmentNumber': apartmentNumber,
        'City': city,
        'Zip': zip,
        'State': state,
        'Country': country,
        'Phone': phone,
        'PhoneExtension': phoneExtension,
        'Email': email,
        'Fax': fax,
        'Contacts': contacts,
        'Website': website,
        'Coordinates': coordinates?.toJson(),
        'CoordinatesFound': coordinatesFound,
        'VerifiedCoordinates': verifiedCoordinates,
        'CheckedWithNtk': checkedWithNtk,
      };

  @override
  List<Object?> get props {
    return [
      name,
      googleId,
      street,
      apartmentNumber,
      city,
      zip,
      state,
      country,
      phone,
      phoneExtension,
      email,
      fax,
      contacts,
      website,
      coordinates,
      coordinatesFound,
      verifiedCoordinates,
      checkedWithNtk,
    ];
  }
}
