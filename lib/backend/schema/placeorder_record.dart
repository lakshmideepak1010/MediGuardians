import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaceorderRecord extends FirestoreRecord {
  PlaceorderRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "batchno" field.
  int? _batchno;
  int get batchno => _batchno ?? 0;
  bool hasBatchno() => _batchno != null;

  // "expirydate" field.
  DateTime? _expirydate;
  DateTime? get expirydate => _expirydate;
  bool hasExpirydate() => _expirydate != null;

  // "item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  void _initializeFields() {
    _price = castToType<int>(snapshotData['price']);
    _batchno = castToType<int>(snapshotData['batchno']);
    _expirydate = snapshotData['expirydate'] as DateTime?;
    _item = snapshotData['item'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('placeorder');

  static Stream<PlaceorderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlaceorderRecord.fromSnapshot(s));

  static Future<PlaceorderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlaceorderRecord.fromSnapshot(s));

  static PlaceorderRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlaceorderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlaceorderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlaceorderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlaceorderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlaceorderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlaceorderRecordData({
  int? price,
  int? batchno,
  DateTime? expirydate,
  String? item,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'batchno': batchno,
      'expirydate': expirydate,
      'item': item,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlaceorderRecordDocumentEquality implements Equality<PlaceorderRecord> {
  const PlaceorderRecordDocumentEquality();

  @override
  bool equals(PlaceorderRecord? e1, PlaceorderRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.batchno == e2?.batchno &&
        e1?.expirydate == e2?.expirydate &&
        e1?.item == e2?.item;
  }

  @override
  int hash(PlaceorderRecord? e) =>
      const ListEquality().hash([e?.price, e?.batchno, e?.expirydate, e?.item]);

  @override
  bool isValidKey(Object? o) => o is PlaceorderRecord;
}
