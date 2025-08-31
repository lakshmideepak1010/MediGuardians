import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reportId" field.
  String? _reportId;
  String get reportId => _reportId ?? '';
  bool hasReportId() => _reportId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "generatedBy" field.
  String? _generatedBy;
  String get generatedBy => _generatedBy ?? '';
  bool hasGeneratedBy() => _generatedBy != null;

  // "generatedAt" field.
  DateTime? _generatedAt;
  DateTime? get generatedAt => _generatedAt;
  bool hasGeneratedAt() => _generatedAt != null;

  // "expires" field.
  DateTime? _expires;
  DateTime? get expires => _expires;
  bool hasExpires() => _expires != null;

  // "sno" field.
  int? _sno;
  int get sno => _sno ?? 0;
  bool hasSno() => _sno != null;

  // "orderid" field.
  int? _orderid;
  int get orderid => _orderid ?? 0;
  bool hasOrderid() => _orderid != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "delivarydate" field.
  DateTime? _delivarydate;
  DateTime? get delivarydate => _delivarydate;
  bool hasDelivarydate() => _delivarydate != null;

  void _initializeFields() {
    _reportId = snapshotData['reportId'] as String?;
    _type = snapshotData['type'] as String?;
    _generatedBy = snapshotData['generatedBy'] as String?;
    _generatedAt = snapshotData['generatedAt'] as DateTime?;
    _expires = snapshotData['expires'] as DateTime?;
    _sno = castToType<int>(snapshotData['sno']);
    _orderid = castToType<int>(snapshotData['orderid']);
    _amount = castToType<int>(snapshotData['amount']);
    _delivarydate = snapshotData['delivarydate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? reportId,
  String? type,
  String? generatedBy,
  DateTime? generatedAt,
  DateTime? expires,
  int? sno,
  int? orderid,
  int? amount,
  DateTime? delivarydate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reportId': reportId,
      'type': type,
      'generatedBy': generatedBy,
      'generatedAt': generatedAt,
      'expires': expires,
      'sno': sno,
      'orderid': orderid,
      'amount': amount,
      'delivarydate': delivarydate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.reportId == e2?.reportId &&
        e1?.type == e2?.type &&
        e1?.generatedBy == e2?.generatedBy &&
        e1?.generatedAt == e2?.generatedAt &&
        e1?.expires == e2?.expires &&
        e1?.sno == e2?.sno &&
        e1?.orderid == e2?.orderid &&
        e1?.amount == e2?.amount &&
        e1?.delivarydate == e2?.delivarydate;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash([
        e?.reportId,
        e?.type,
        e?.generatedBy,
        e?.generatedAt,
        e?.expires,
        e?.sno,
        e?.orderid,
        e?.amount,
        e?.delivarydate
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
