import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "numberofproduction" field.
  int? _numberofproduction;
  int get numberofproduction => _numberofproduction ?? 0;
  bool hasNumberofproduction() => _numberofproduction != null;

  // "previousstock" field.
  int? _previousstock;
  int get previousstock => _previousstock ?? 0;
  bool hasPreviousstock() => _previousstock != null;

  // "total" field.
  int? _total;
  int get total => _total ?? 0;
  bool hasTotal() => _total != null;

  // "nameofmedi" field.
  String? _nameofmedi;
  String get nameofmedi => _nameofmedi ?? '';
  bool hasNameofmedi() => _nameofmedi != null;

  void _initializeFields() {
    _numberofproduction = castToType<int>(snapshotData['numberofproduction']);
    _previousstock = castToType<int>(snapshotData['previousstock']);
    _total = castToType<int>(snapshotData['total']);
    _nameofmedi = snapshotData['nameofmedi'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  int? numberofproduction,
  int? previousstock,
  int? total,
  String? nameofmedi,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numberofproduction': numberofproduction,
      'previousstock': previousstock,
      'total': total,
      'nameofmedi': nameofmedi,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.numberofproduction == e2?.numberofproduction &&
        e1?.previousstock == e2?.previousstock &&
        e1?.total == e2?.total &&
        e1?.nameofmedi == e2?.nameofmedi;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality()
      .hash([e?.numberofproduction, e?.previousstock, e?.total, e?.nameofmedi]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
