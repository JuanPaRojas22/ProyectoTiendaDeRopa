import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre_inventario" field.
  String? _nombreInventario;
  String get nombreInventario => _nombreInventario ?? '';
  bool hasNombreInventario() => _nombreInventario != null;

  // "imagen_inventario" field.
  String? _imagenInventario;
  String get imagenInventario => _imagenInventario ?? '';
  bool hasImagenInventario() => _imagenInventario != null;

  // "talla_inventario" field.
  String? _tallaInventario;
  String get tallaInventario => _tallaInventario ?? '';
  bool hasTallaInventario() => _tallaInventario != null;

  // "precio_inventario" field.
  double? _precioInventario;
  double get precioInventario => _precioInventario ?? 0.0;
  bool hasPrecioInventario() => _precioInventario != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _nombreInventario = snapshotData['nombre_inventario'] as String?;
    _imagenInventario = snapshotData['imagen_inventario'] as String?;
    _tallaInventario = snapshotData['talla_inventario'] as String?;
    _precioInventario = castToType<double>(snapshotData['precio_inventario']);
    _date = snapshotData['date'] as DateTime?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  String? nombreInventario,
  String? imagenInventario,
  String? tallaInventario,
  double? precioInventario,
  DateTime? date,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_inventario': nombreInventario,
      'imagen_inventario': imagenInventario,
      'talla_inventario': tallaInventario,
      'precio_inventario': precioInventario,
      'date': date,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.nombreInventario == e2?.nombreInventario &&
        e1?.imagenInventario == e2?.imagenInventario &&
        e1?.tallaInventario == e2?.tallaInventario &&
        e1?.precioInventario == e2?.precioInventario &&
        e1?.date == e2?.date &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(CarritoRecord? e) => const ListEquality().hash([
        e?.nombreInventario,
        e?.imagenInventario,
        e?.tallaInventario,
        e?.precioInventario,
        e?.date,
        e?.cantidad
      ]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
