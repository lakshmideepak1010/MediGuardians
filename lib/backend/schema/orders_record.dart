import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orderId" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "ProductId" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "ChemistId" field.
  String? _chemistId;
  String get chemistId => _chemistId ?? '';
  bool hasChemistId() => _chemistId != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "OrderStatus" field.
  String? _orderStatus;
  String get orderStatus => _orderStatus ?? '';
  bool hasOrderStatus() => _orderStatus != null;

  // "CreatedAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "DeliveryDate" field.
  DateTime? _deliveryDate;
  DateTime? get deliveryDate => _deliveryDate;
  bool hasDeliveryDate() => _deliveryDate != null;

  void _initializeFields() {
    _orderId = snapshotData['orderId'] as String?;
    _productId = snapshotData['ProductId'] as String?;
    _chemistId = snapshotData['ChemistId'] as String?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _orderStatus = snapshotData['OrderStatus'] as String?;
    _createdAt = snapshotData['CreatedAt'] as DateTime?;
    _deliveryDate = snapshotData['DeliveryDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? orderId,
  String? productId,
  String? chemistId,
  int? quantity,
  String? orderStatus,
  DateTime? createdAt,
  DateTime? deliveryDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orderId': orderId,
      'ProductId': productId,
      'ChemistId': chemistId,
      'quantity': quantity,
      'OrderStatus': orderStatus,
      'CreatedAt': createdAt,
      'DeliveryDate': deliveryDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.orderId == e2?.orderId &&
        e1?.productId == e2?.productId &&
        e1?.chemistId == e2?.chemistId &&
        e1?.quantity == e2?.quantity &&
        e1?.orderStatus == e2?.orderStatus &&
        e1?.createdAt == e2?.createdAt &&
        e1?.deliveryDate == e2?.deliveryDate;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.orderId,
        e?.productId,
        e?.chemistId,
        e?.quantity,
        e?.orderStatus,
        e?.createdAt,
        e?.deliveryDate
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
