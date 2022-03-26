import 'package:equatable/equatable.dart';

import 'office.dart';

class UserTenant extends Equatable {
  final String? role;
  final dynamic datUserName;
  final dynamic datPassword;
  final String? assetId;
  final String? contractorType;
  final dynamic truckStopUserName;
  final dynamic truckStopPassword;
  final dynamic truckStopHandle;
  final String? companyCode;
  final bool? inBonusPool;
  final bool? isDisabled;
  final bool? comchekRestricted;
  final bool? companyOwnedAsset;
  final int? truckStopIntegrationIdNum;
  final int? commissionRate;
  final Office? office;
  final dynamic comcheckSettings;
  final dynamic userIntegrations;
  final List<String>? permissions;
  final dynamic userSettings;
  final dynamic commission;
  final List<dynamic>? integrationCredentials;

  const UserTenant({
    this.role,
    this.datUserName,
    this.datPassword,
    this.assetId,
    this.contractorType,
    this.truckStopUserName,
    this.truckStopPassword,
    this.truckStopHandle,
    this.companyCode,
    this.inBonusPool,
    this.isDisabled,
    this.comchekRestricted,
    this.companyOwnedAsset,
    this.truckStopIntegrationIdNum,
    this.commissionRate,
    this.office,
    this.comcheckSettings,
    this.userIntegrations,
    this.permissions,
    this.userSettings,
    this.commission,
    this.integrationCredentials,
  });

  factory UserTenant.fromJson(Map<String, dynamic> json) => UserTenant(
        role: json['Role'] as String?,
        datUserName: json['DATUserName'] as dynamic,
        datPassword: json['DATPassword'] as dynamic,
        assetId: json['AssetId'] as String?,
        contractorType: json['ContractorType'] as String?,
        truckStopUserName: json['TruckStopUserName'] as dynamic,
        truckStopPassword: json['TruckStopPassword'] as dynamic,
        truckStopHandle: json['TruckStopHandle'] as dynamic,
        companyCode: json['CompanyCode'] as String?,
        inBonusPool: json['InBonusPool'] as bool?,
        isDisabled: json['IsDisabled'] as bool?,
        comchekRestricted: json['ComchekRestricted'] as bool?,
        companyOwnedAsset: json['CompanyOwnedAsset'] as bool?,
        truckStopIntegrationIdNum: json['TruckStopIntegrationIdNum'] as int?,
        commissionRate: json['CommissionRate'] as int?,
        office: json['Office'] == null
            ? null
            : Office.fromJson(json['Office'] as Map<String, dynamic>),
        comcheckSettings: json['ComcheckSettings'] as dynamic,
        userIntegrations: json['UserIntegrations'] as dynamic,
        permissions: List<String>.from(json["Permissions"].map((x) => x)),
        userSettings: json['UserSettings'] as dynamic,
        commission: json['Commission'] as dynamic,
        integrationCredentials:
            json['IntegrationCredentials'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'Role': role,
        'DATUserName': datUserName,
        'DATPassword': datPassword,
        'AssetId': assetId,
        'ContractorType': contractorType,
        'TruckStopUserName': truckStopUserName,
        'TruckStopPassword': truckStopPassword,
        'TruckStopHandle': truckStopHandle,
        'CompanyCode': companyCode,
        'InBonusPool': inBonusPool,
        'IsDisabled': isDisabled,
        'ComchekRestricted': comchekRestricted,
        'CompanyOwnedAsset': companyOwnedAsset,
        'TruckStopIntegrationIdNum': truckStopIntegrationIdNum,
        'CommissionRate': commissionRate,
        'Office': office?.toJson(),
        'ComcheckSettings': comcheckSettings,
        'UserIntegrations': userIntegrations,
        'Permissions': permissions,
        'UserSettings': userSettings,
        'Commission': commission,
        'IntegrationCredentials': integrationCredentials,
      };

  @override
  List<Object?> get props {
    return [
      role,
      datUserName,
      datPassword,
      assetId,
      contractorType,
      truckStopUserName,
      truckStopPassword,
      truckStopHandle,
      companyCode,
      inBonusPool,
      isDisabled,
      comchekRestricted,
      companyOwnedAsset,
      truckStopIntegrationIdNum,
      commissionRate,
      office,
      comcheckSettings,
      userIntegrations,
      permissions,
      userSettings,
      commission,
      integrationCredentials,
    ];
  }
}
