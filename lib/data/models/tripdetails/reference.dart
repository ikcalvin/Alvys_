import 'dart:convert';

import 'package:equatable/equatable.dart';

class Reference extends Equatable {
  final String? id;
  final String? name;
  final String? value;

  const Reference({this.id, this.name, this.value});

  factory Reference.fromMap(Map<String, dynamic> data) => Reference(
        id: data['id'] as String?,
        name: data['Name'] as String?,
        value: data['Value'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'Name': name,
        'Value': value,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Reference].
  factory Reference.fromJson(String data) {
    return Reference.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Reference] to a JSON string.
  String toJson() => json.encode(toMap());

  Reference copyWith({
    String? id,
    String? name,
    String? value,
  }) {
    return Reference(
      id: id ?? this.id,
      name: name ?? this.name,
      value: value ?? this.value,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name, value];
}
