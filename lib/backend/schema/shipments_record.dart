import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShipmentsRecord extends FirestoreRecord {
  ShipmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "shipmentId" field.
  String? _shipmentId;
  String get shipmentId => _shipmentId ?? '';
  bool hasShipmentId() => _shipmentId != null;

  // "batchId" field.
  String? _batchId;
  String get batchId => _batchId ?? '';
  bool hasBatchId() => _batchId != null;

  // "supplierId" field.
  String? _supplierId;
  String get supplierId => _supplierId ?? '';
  bool hasSupplierId() => _supplierId != null;

  // "destination" field.
  String? _destination;
  String get destination => _destination ?? '';
  bool hasDestination() => _destination != null;

  // "driverDetails" field.
  String? _driverDetails;
  String get driverDetails => _driverDetails ?? '';
  bool hasDriverDetails() => _driverDetails != null;

  // "tempReadings" field.
  int? _tempReadings;
  int get tempReadings => _tempReadings ?? 0;
  bool hasTempReadings() => _tempReadings != null;

  // "humidityReadings" field.
  int? _humidityReadings;
  int get humidityReadings => _humidityReadings ?? 0;
  bool hasHumidityReadings() => _humidityReadings != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _shipmentId = snapshotData['shipmentId'] as String?;
    _batchId = snapshotData['batchId'] as String?;
    _supplierId = snapshotData['supplierId'] as String?;
    _destination = snapshotData['destination'] as String?;
    _driverDetails = snapshotData['driverDetails'] as String?;
    _tempReadings = castToType<int>(snapshotData['tempReadings']);
    _humidityReadings = castToType<int>(snapshotData['humidityReadings']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Shipments');

  static Stream<ShipmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShipmentsRecord.fromSnapshot(s));

  static Future<ShipmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShipmentsRecord.fromSnapshot(s));

  static ShipmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShipmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShipmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShipmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShipmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShipmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShipmentsRecordData({
  String? shipmentId,
  String? batchId,
  String? supplierId,
  String? destination,
  String? driverDetails,
  int? tempReadings,
  int? humidityReadings,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'shipmentId': shipmentId,
      'batchId': batchId,
      'supplierId': supplierId,
      'destination': destination,
      'driverDetails': driverDetails,
      'tempReadings': tempReadings,
      'humidityReadings': humidityReadings,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShipmentsRecordDocumentEquality implements Equality<ShipmentsRecord> {
  const ShipmentsRecordDocumentEquality();

  @override
  bool equals(ShipmentsRecord? e1, ShipmentsRecord? e2) {
    return e1?.shipmentId == e2?.shipmentId &&
        e1?.batchId == e2?.batchId &&
        e1?.supplierId == e2?.supplierId &&
        e1?.destination == e2?.destination &&
        e1?.driverDetails == e2?.driverDetails &&
        e1?.tempReadings == e2?.tempReadings &&
        e1?.humidityReadings == e2?.humidityReadings &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ShipmentsRecord? e) => const ListEquality().hash([
        e?.shipmentId,
        e?.batchId,
        e?.supplierId,
        e?.destination,
        e?.driverDetails,
        e?.tempReadings,
        e?.humidityReadings,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ShipmentsRecord;
}
