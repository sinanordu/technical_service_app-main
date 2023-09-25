// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      priority: json['priority'] as String?,
      type: json['type'] as String?,
      isReportWritten: json['isReportWritten'] as bool? ?? false,
      isUnderWarranty: json['isUnderWarranty'] as bool?,
      productUtCode: json['productUtCode'] as String?,
      productSerialNumber: json['productSerialNumber'] as String?,
      productModel: json['productModel'] as String?,
      customerCompanyName: json['customerCompanyName'] as String?,
      customerCompanyAdress: json['customerCompanyAdress'] as String?,
      customerCompanyRepresentativeNameSurname:
          json['customerCompanyRepresentativeNameSurname'] as String?,
      customerCompanyRepresentativeTitle:
          json['customerCompanyRepresentativeTitle'] as String?,
      customerCompanyRepresentativeMail:
          json['customerCompanyRepresentativeMail'] as String?,
      customerCompanyRepresentativePhone:
          json['customerCompanyRepresentativePhone'] as String?,
      serviceAdress: json['serviceAdress'] as String?,
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'priority': instance.priority,
      'type': instance.type,
      'isReportWritten': instance.isReportWritten,
      'isUnderWarranty': instance.isUnderWarranty,
      'productUtCode': instance.productUtCode,
      'productSerialNumber': instance.productSerialNumber,
      'productModel': instance.productModel,
      'customerCompanyName': instance.customerCompanyName,
      'customerCompanyAdress': instance.customerCompanyAdress,
      'customerCompanyRepresentativeNameSurname':
          instance.customerCompanyRepresentativeNameSurname,
      'customerCompanyRepresentativeTitle':
          instance.customerCompanyRepresentativeTitle,
      'customerCompanyRepresentativeMail':
          instance.customerCompanyRepresentativeMail,
      'customerCompanyRepresentativePhone':
          instance.customerCompanyRepresentativePhone,
      'serviceAdress': instance.serviceAdress,
    };
