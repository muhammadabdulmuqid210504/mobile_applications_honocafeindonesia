import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardProductRecord extends FirestoreRecord {
  CardProductRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "product_ref" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "final_price" field.
  double? _finalPrice;
  double get finalPrice => _finalPrice ?? 0.0;
  bool hasFinalPrice() => _finalPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "noMeja" field.
  String? _noMeja;
  String get noMeja => _noMeja ?? '';
  bool hasNoMeja() => _noMeja != null;

  // "product_Imge" field.
  String? _productImge;
  String get productImge => _productImge ?? '';
  bool hasProductImge() => _productImge != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _productId = snapshotData['product_id'] as String?;
    _productRef = snapshotData['product_ref'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _finalPrice = castToType<double>(snapshotData['final_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _noMeja = snapshotData['noMeja'] as String?;
    _productImge = snapshotData['product_Imge'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cardProduct');

  static Stream<CardProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CardProductRecord.fromSnapshot(s));

  static Future<CardProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CardProductRecord.fromSnapshot(s));

  static CardProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CardProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CardProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CardProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CardProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CardProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCardProductRecordData({
  String? productId,
  DocumentReference? productRef,
  double? price,
  double? finalPrice,
  int? quantity,
  DocumentReference? userRef,
  String? noMeja,
  String? productImge,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_id': productId,
      'product_ref': productRef,
      'price': price,
      'final_price': finalPrice,
      'quantity': quantity,
      'user_ref': userRef,
      'noMeja': noMeja,
      'product_Imge': productImge,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class CardProductRecordDocumentEquality implements Equality<CardProductRecord> {
  const CardProductRecordDocumentEquality();

  @override
  bool equals(CardProductRecord? e1, CardProductRecord? e2) {
    return e1?.productId == e2?.productId &&
        e1?.productRef == e2?.productRef &&
        e1?.price == e2?.price &&
        e1?.finalPrice == e2?.finalPrice &&
        e1?.quantity == e2?.quantity &&
        e1?.userRef == e2?.userRef &&
        e1?.noMeja == e2?.noMeja &&
        e1?.productImge == e2?.productImge &&
        e1?.name == e2?.name;
  }

  @override
  int hash(CardProductRecord? e) => const ListEquality().hash([
        e?.productId,
        e?.productRef,
        e?.price,
        e?.finalPrice,
        e?.quantity,
        e?.userRef,
        e?.noMeja,
        e?.productImge,
        e?.name
      ]);

  @override
  bool isValidKey(Object? o) => o is CardProductRecord;
}