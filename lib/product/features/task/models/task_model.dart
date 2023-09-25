import 'package:flutter/foundation.dart' show immutable;
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart' show JsonSerializable;
import 'package:technical_service_app/core/base/base_model.dart';

part 'task_model.g.dart';

@JsonSerializable()
@immutable
final class TaskModel implements BaseModel<TaskModel> {
  final int? id;
  final String? title;
  final String? description;
  final String? status;
  final String? priority;
  final String? type;
  final bool isReportWritten;
  final bool? isUnderWarranty;
  final String? productUtCode;
  final String? productSerialNumber;
  final String? productModel;
  final String? customerCompanyName;
  final String? customerCompanyAdress;
  final String? customerCompanyRepresentativeNameSurname;
  final String? customerCompanyRepresentativeTitle;
  final String? customerCompanyRepresentativeMail;
  final String? customerCompanyRepresentativePhone;
  final String? serviceAdress;

  const TaskModel({
    this.id,
    this.title,
    this.description,
    this.status,
    this.priority,
    this.type,
    this.isReportWritten = false,
    this.isUnderWarranty,
    this.productUtCode,
    this.productSerialNumber,
    this.productModel,
    this.customerCompanyName,
    this.customerCompanyAdress,
    this.customerCompanyRepresentativeNameSurname,
    this.customerCompanyRepresentativeTitle,
    this.customerCompanyRepresentativeMail,
    this.customerCompanyRepresentativePhone,
    this.serviceAdress,
  });

  @override
  TaskModel fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
