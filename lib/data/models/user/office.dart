import 'package:equatable/equatable.dart';

import 'shared_with.dart';

class Office extends Equatable {
  final dynamic id;
  final dynamic name;
  final int? commissionRate;
  final bool? isDeleted;
  final SharedWith? sharedWith;
  final dynamic companyCode;

  const Office({
    this.id,
    this.name,
    this.commissionRate,
    this.isDeleted,
    this.sharedWith,
    this.companyCode,
  });

  factory Office.fromJson(Map<String, dynamic> json) => Office(
        id: json['id'] as dynamic,
        name: json['Name'] as dynamic,
        commissionRate: json['CommissionRate'] as int?,
        isDeleted: json['IsDeleted'] as bool?,
        sharedWith: json['SharedWith'] == null
            ? null
            : SharedWith.fromJson(json['SharedWith'] as Map<String, dynamic>),
        companyCode: json['CompanyCode'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'Name': name,
        'CommissionRate': commissionRate,
        'IsDeleted': isDeleted,
        'SharedWith': sharedWith?.toJson(),
        'CompanyCode': companyCode,
      };

  @override
  List<Object?> get props {
    return [
      id,
      name,
      commissionRate,
      isDeleted,
      sharedWith,
      companyCode,
    ];
  }
}
