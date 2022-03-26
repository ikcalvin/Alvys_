import 'package:equatable/equatable.dart';

class Coordinates extends Equatable {
  final String? latitude;
  final String? longitude;

  const Coordinates({this.latitude, this.longitude});

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        latitude: json['Latitude'] as String?,
        longitude: json['Longitude'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'Latitude': latitude,
        'Longitude': longitude,
      };

  @override
  List<Object?> get props => [latitude, longitude];
}
