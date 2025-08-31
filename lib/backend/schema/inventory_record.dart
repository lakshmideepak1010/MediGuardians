import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryRecord extends FirestoreRecord {
  InventoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "inventoryId" field.
  String? _inventoryId;
  String get inventoryId => _inventoryId ?? '';
  bool hasInventoryId() => _inventoryId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "productId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "stockLevel" field.
  String? _stockLevel;
  String get stockLevel => _stockLevel ?? '';
  bool hasStockLevel() => _stockLevel != null;

  // "lastUpdated" field.
  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _lastUpdated;
  bool hasLastUpdated() => _lastUpdated != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "expdate" field.
  DateTime? _expdate;
  DateTime? get expdate => _expdate;
  bool hasExpdate() => _expdate != null;

  // "stockid" field.
  String? _stockid;
  String get stockid => _stockid ?? '';
  bool hasStockid() => _stockid != null;

  void _initializeFields() {
    _inventoryId = snapshotData['inventoryId'] as String?;
    _userId = snapshotData['userId'] as String?;
    _productId = snapshotData['productId'] as String?;
    _stockLevel = snapshotData['stockLevel'] as String?;
    _lastUpdated = snapshotData['lastUpdated'] as DateTime?;
    _amount = castToType<int>(snapshotData['amount']);
    _expdate = snapshotData['expdate'] as DateTime?;
    _stockid = snapshotData['stockid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventoryRecord.fromSnapshot(s));

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventoryRecord.fromSnapshot(s));

  static InventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventoryRecordData({
  String? inventoryId,
  String? userId,
  String? productId,
  String? stockLevel,
  DateTime? lastUpdated,
  int? amount,
  DateTime? expdate,
  String? stockid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'inventoryId': inventoryId,
      'userId': userId,
      'productId': productId,
      'stockLevel': stockLevel,
      'lastUpdated': lastUpdated,
      'amount': amount,
      'expdate': expdate,
      'stockid': stockid,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventoryRecordDocumentEquality implements Equality<InventoryRecord> {
  const InventoryRecordDocumentEquality();

  @override
  bool equals(InventoryRecord? e1, InventoryRecord? e2) {
    return e1?.inventoryId == e2?.inventoryId &&
        e1?.userId == e2?.userId &&
        e1?.productId == e2?.productId &&
        e1?.stockLevel == e2?.stockLevel &&
        e1?.lastUpdated == e2?.lastUpdated &&
        e1?.amount == e2?.amount &&
        e1?.expdate == e2?.expdate &&
        e1?.stockid == e2?.stockid;
  }

  @override
  int hash(InventoryRecord? e) => const ListEquality().hash([
        e?.inventoryId,
        e?.userId,
        e?.productId,
        e?.stockLevel,
        e?.lastUpdated,
        e?.amount,
        e?.expdate,
        e?.stockid
      ]);

  @override
  bool isValidKey(Object? o) => o is InventoryRecord;
}
