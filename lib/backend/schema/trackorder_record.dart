import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackorderRecord extends FirestoreRecord {
  TrackorderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "deleverdate" field.
  DateTime? _deleverdate;
  DateTime? get deleverdate => _deleverdate;
  bool hasDeleverdate() => _deleverdate != null;

  // "product" field.
  String? _product;
  String get product => _product ?? '';
  bool hasProduct() => _product != null;

  void _initializeFields() {
    _sno = castToType<int>(snapshotData['sno']);
    _orderid = castToType<int>(snapshotData['orderid']);
    _amount = castToType<int>(snapshotData['amount']);
    _deleverdate = snapshotData['deleverdate'] as DateTime?;
    _product = snapshotData['product'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trackorder');

  static Stream<TrackorderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackorderRecord.fromSnapshot(s));

  static Future<TrackorderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackorderRecord.fromSnapshot(s));

  static TrackorderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackorderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackorderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackorderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackorderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackorderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackorderRecordData({
  int? sno,
  int? orderid,
  int? amount,
  DateTime? deleverdate,
  String? product,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sno': sno,
      'orderid': orderid,
      'amount': amount,
      'deleverdate': deleverdate,
      'product': product,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackorderRecordDocumentEquality implements Equality<TrackorderRecord> {
  const TrackorderRecordDocumentEquality();

  @override
  bool equals(TrackorderRecord? e1, TrackorderRecord? e2) {
    return e1?.sno == e2?.sno &&
        e1?.orderid == e2?.orderid &&
        e1?.amount == e2?.amount &&
        e1?.deleverdate == e2?.deleverdate &&
        e1?.product == e2?.product;
  }

  @override
  int hash(TrackorderRecord? e) => const ListEquality()
      .hash([e?.sno, e?.orderid, e?.amount, e?.deleverdate, e?.product]);

  @override
  bool isValidKey(Object? o) => o is TrackorderRecord;
}
