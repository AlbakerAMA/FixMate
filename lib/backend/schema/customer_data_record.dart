import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerDataRecord extends FirestoreRecord {
  CustomerDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _location = snapshotData['Location'] as String?;
    _date = snapshotData['Date'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Customer_Data');

  static Stream<CustomerDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CustomerDataRecord.fromSnapshot(s));

  static Future<CustomerDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CustomerDataRecord.fromSnapshot(s));

  static CustomerDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CustomerDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CustomerDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CustomerDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CustomerDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CustomerDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCustomerDataRecordData({
  String? name,
  String? phone,
  String? location,
  DateTime? date,
  String? notes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Phone': phone,
      'Location': location,
      'Date': date,
      'notes': notes,
    }.withoutNulls,
  );

  return firestoreData;
}

class CustomerDataRecordDocumentEquality
    implements Equality<CustomerDataRecord> {
  const CustomerDataRecordDocumentEquality();

  @override
  bool equals(CustomerDataRecord? e1, CustomerDataRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.location == e2?.location &&
        e1?.date == e2?.date &&
        e1?.notes == e2?.notes;
  }

  @override
  int hash(CustomerDataRecord? e) => const ListEquality()
      .hash([e?.name, e?.phone, e?.location, e?.date, e?.notes]);

  @override
  bool isValidKey(Object? o) => o is CustomerDataRecord;
}
