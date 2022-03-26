import 'dart:convert';

import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final String? link;
  final String? type;
  final String? fileName;
  final String? tenantName;

  const Datum({this.link, this.type, this.fileName, this.tenantName});

  factory Datum.fromMap(Map<String, dynamic> data) => Datum(
        link: data['Link'] as String?,
        type: data['Type'] as String?,
        fileName: data['FileName'] as String?,
        tenantName: data['TenantName'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Link': link,
        'Type': type,
        'FileName': fileName,
        'TenantName': tenantName,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Datum].
  factory Datum.fromJson(String data) {
    return Datum.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Datum] to a JSON string.
  String toJson() => json.encode(toMap());

  Datum copyWith({
    String? link,
    String? type,
    String? fileName,
    String? tenantName,
  }) {
    return Datum(
      link: link ?? this.link,
      type: type ?? this.type,
      fileName: fileName ?? this.fileName,
      tenantName: tenantName ?? this.tenantName,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [link, type, fileName, tenantName];
}
