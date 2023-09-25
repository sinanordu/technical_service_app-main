import 'package:flutter/foundation.dart' show immutable;
import 'package:technical_service_app/product/features/task/models/task_model.dart';

@immutable
abstract class NotesApiProtocol {
  const NotesApiProtocol();

  Future<Iterable<TaskModel>?> fetchNotes();
}

@immutable
final class NotesApi implements NotesApiProtocol {
  // const NotesApi._sharedInstance();
  // static const _shared = NotesApi._sharedInstance();
  // factory NotesApi.instance() => _shared;

  @override
  Future<Iterable<TaskModel>?> fetchNotes() => Future.delayed(
        const Duration(seconds: 1),
        () => mockTickets /* return a mock datas */,
      );
}

final mockTickets = {
  const TaskModel(
    id: 1,
    title: "Bilet Başlığı 1",
    description: "Bilet Açıklaması 1",
    status: "Açık",
    priority: "Yüksek",
    type: "Hata",
    isReportWritten: true,
    isUnderWarranty: false,
    productUtCode: "UT12345",
    productSerialNumber: "SN67890",
    productModel: "Model XYZ",
    customerCompanyName: "Müşteri Şirketi 1",
    customerCompanyAdress: "Müşteri Adresi 1",
    customerCompanyRepresentativeNameSurname: "Temsilci Adı Soyadı 1",
    customerCompanyRepresentativeTitle: "Temsilci Unvanı 1",
    customerCompanyRepresentativeMail: "temsilci1@example.com",
    customerCompanyRepresentativePhone: "123-456-7890",
    serviceAdress: "Servis Adresi 1",
  ),
  const TaskModel(
    id: 2,
    title: "Bilet Başlığı 2",
    description: "Bilet Açıklaması 2",
    status: "Kapalı",
    priority: "Orta",
    type: "Sorun",
    isReportWritten: false,
    isUnderWarranty: true,
    productUtCode: "UT54321",
    productSerialNumber: "SN09876",
    productModel: "Model ABC",
    customerCompanyName: "Müşteri Şirketi 2",
    customerCompanyAdress: "Müşteri Adresi 2",
    customerCompanyRepresentativeNameSurname: "Temsilci Adı Soyadı 2",
    customerCompanyRepresentativeTitle: "Temsilci Unvanı 2",
    customerCompanyRepresentativeMail: "temsilci2@example.com",
    customerCompanyRepresentativePhone: "987-654-3210",
    serviceAdress: "Servis Adresi 2",
  ),
  const TaskModel(
    id: 3,
    title: "Bilet Başlığı 3",
    description: "Bilet Açıklaması 3",
    status: "Kapalı",
    priority: "Orta",
    type: "Sorun",
    isReportWritten: false,
    isUnderWarranty: true,
    productUtCode: "UT54321",
    productSerialNumber: "SN09876",
    productModel: "Model ABC",
    customerCompanyName: "Müşteri Şirketi 3",
    customerCompanyAdress: "Müşteri Adresi 2",
    customerCompanyRepresentativeNameSurname: "Temsilci Adı Soyadı 2",
    customerCompanyRepresentativeTitle: "Temsilci Unvanı 3",
    customerCompanyRepresentativeMail: "temsilci3@example.com",
    customerCompanyRepresentativePhone: "987-654-3210",
    serviceAdress: "Servis Adresi 3",
  ),
};
