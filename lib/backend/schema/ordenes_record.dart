import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdenesRecord extends FirestoreRecord {
  OrdenesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "total_productos" field.
  int? _totalProductos;
  int get totalProductos => _totalProductos ?? 0;
  bool hasTotalProductos() => _totalProductos != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "numero_orden" field.
  String? _numeroOrden;
  String get numeroOrden => _numeroOrden ?? '';
  bool hasNumeroOrden() => _numeroOrden != null;

  // "precio_total" field.
  double? _precioTotal;
  double get precioTotal => _precioTotal ?? 0.0;
  bool hasPrecioTotal() => _precioTotal != null;

  void _initializeFields() {
    _totalProductos = castToType<int>(snapshotData['total_productos']);
    _date = snapshotData['date'] as DateTime?;
    _numeroOrden = snapshotData['numero_orden'] as String?;
    _precioTotal = castToType<double>(snapshotData['precio_total']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordenes');

  static Stream<OrdenesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenesRecord.fromSnapshot(s));

  static Future<OrdenesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenesRecord.fromSnapshot(s));

  static OrdenesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrdenesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenesRecordData({
  int? totalProductos,
  DateTime? date,
  String? numeroOrden,
  double? precioTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'total_productos': totalProductos,
      'date': date,
      'numero_orden': numeroOrden,
      'precio_total': precioTotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdenesRecordDocumentEquality implements Equality<OrdenesRecord> {
  const OrdenesRecordDocumentEquality();

  @override
  bool equals(OrdenesRecord? e1, OrdenesRecord? e2) {
    return e1?.totalProductos == e2?.totalProductos &&
        e1?.date == e2?.date &&
        e1?.numeroOrden == e2?.numeroOrden &&
        e1?.precioTotal == e2?.precioTotal;
  }

  @override
  int hash(OrdenesRecord? e) => const ListEquality()
      .hash([e?.totalProductos, e?.date, e?.numeroOrden, e?.precioTotal]);

  @override
  bool isValidKey(Object? o) => o is OrdenesRecord;
}
