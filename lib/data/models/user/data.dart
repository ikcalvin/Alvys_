import 'package:equatable/equatable.dart';

import 'address.dart';
import 'user_tenant.dart';

class Data extends Equatable {
  final String? id;
  final String? userName;
  final String? name;
  final String? email;
  final dynamic secondaryEmail;
  final dynamic subsidiaryEmail;
  final String? userType;
  final String? phone;
  final String? appToken;
  final String? driversLicenceState;
  final String? driversLicenceNumber;
  final Address? address;
  final String? dateCreated;
  final String? dateModified;
  final DateTime? driversLicenceExpirationDate;
  final bool? firstLogin;
  final bool? isDeleted;
  final List<UserTenant>? userTenants;

  const Data({
    this.id,
    this.userName,
    this.name,
    this.email,
    this.secondaryEmail,
    this.subsidiaryEmail,
    this.userType,
    this.phone,
    this.appToken,
    this.driversLicenceState,
    this.driversLicenceNumber,
    this.address,
    this.dateCreated,
    this.dateModified,
    this.driversLicenceExpirationDate,
    this.firstLogin,
    this.isDeleted,
    this.userTenants,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as String?,
        userName: json['UserName'] as String?,
        name: json['Name'] as String?,
        email: json['Email'] as String?,
        secondaryEmail: json['SecondaryEmail'] as dynamic,
        subsidiaryEmail: json['SubsidiaryEmail'] as dynamic,
        userType: json['UserType'] as String?,
        phone: json['Phone'] as String?,
        appToken: json['AppToken'] as String?,
        driversLicenceState: json['DriversLicenceState'] as String?,
        driversLicenceNumber: json['DriversLicenceNumber'] as String?,
        address: json['Address'] == null
            ? null
            : Address.fromJson(json['Address'] as Map<String, dynamic>),
        dateCreated: json['DateCreated'] as String?,
        dateModified: json['DateModified'] as String?,
        driversLicenceExpirationDate: json['DriversLicenceExpirationDate'] ==
                null
            ? null
            : DateTime.parse(json['DriversLicenceExpirationDate'] as String),
        firstLogin: json['FirstLogin'] as bool?,
        isDeleted: json['IsDeleted'] as bool?,
        userTenants: (json['UserTenants'] as List<dynamic>?)
            ?.map((e) => UserTenant.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'UserName': userName,
        'Name': name,
        'Email': email,
        'SecondaryEmail': secondaryEmail,
        'SubsidiaryEmail': subsidiaryEmail,
        'UserType': userType,
        'Phone': phone,
        'AppToken': appToken,
        'DriversLicenceState': driversLicenceState,
        'DriversLicenceNumber': driversLicenceNumber,
        'Address': address?.toJson(),
        'DateCreated': dateCreated,
        'DateModified': dateModified,
        'DriversLicenceExpirationDate':
            driversLicenceExpirationDate?.toIso8601String(),
        'FirstLogin': firstLogin,
        'IsDeleted': isDeleted,
        'UserTenants': userTenants?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      userName,
      name,
      email,
      secondaryEmail,
      subsidiaryEmail,
      userType,
      phone,
      appToken,
      driversLicenceState,
      driversLicenceNumber,
      address,
      dateCreated,
      dateModified,
      driversLicenceExpirationDate,
      firstLogin,
      isDeleted,
      userTenants,
    ];
  }
}
