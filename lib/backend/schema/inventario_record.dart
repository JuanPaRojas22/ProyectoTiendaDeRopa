import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventarioRecord extends FirestoreRecord {
  InventarioRecord._(
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

  // "precio_inventario" field.
  double? _precioInventario;
  double get precioInventario => _precioInventario ?? 0.0;
  bool hasPrecioInventario() => _precioInventario != null;

  // "imagen_inventario2" field.
  String? _imagenInventario2;
  String get imagenInventario2 => _imagenInventario2 ?? '';
  bool hasImagenInventario2() => _imagenInventario2 != null;

  // "imagen_inventario3" field.
  String? _imagenInventario3;
  String get imagenInventario3 => _imagenInventario3 ?? '';
  bool hasImagenInventario3() => _imagenInventario3 != null;

  // "descripcion_inventario" field.
  String? _descripcionInventario;
  String get descripcionInventario => _descripcionInventario ?? '';
  bool hasDescripcionInventario() => _descripcionInventario != null;

  // "categorias" field.
  String? _categorias;
  String get categorias => _categorias ?? '';
  bool hasCategorias() => _categorias != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  void _initializeFields() {
    _nombreInventario = snapshotData['nombre_inventario'] as String?;
    _imagenInventario = snapshotData['imagen_inventario'] as String?;
    _precioInventario = castToType<double>(snapshotData['precio_inventario']);
    _imagenInventario2 = snapshotData['imagen_inventario2'] as String?;
    _imagenInventario3 = snapshotData['imagen_inventario3'] as String?;
    _descripcionInventario = snapshotData['descripcion_inventario'] as String?;
    _categorias = snapshotData['categorias'] as String?;
    _genero = snapshotData['genero'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inventario');

  static Stream<InventarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InventarioRecord.fromSnapshot(s));

  static Future<InventarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InventarioRecord.fromSnapshot(s));

  static InventarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InventarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InventarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InventarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InventarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InventarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInventarioRecordData({
  String? nombreInventario,
  String? imagenInventario,
  double? precioInventario,
  String? imagenInventario2,
  String? imagenInventario3,
  String? descripcionInventario,
  String? categorias,
  String? genero,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_inventario': nombreInventario,
      'imagen_inventario': imagenInventario,
      'precio_inventario': precioInventario,
      'imagen_inventario2': imagenInventario2,
      'imagen_inventario3': imagenInventario3,
      'descripcion_inventario': descripcionInventario,
      'categorias': categorias,
      'genero': genero,
    }.withoutNulls,
  );

  return firestoreData;
}

class InventarioRecordDocumentEquality implements Equality<InventarioRecord> {
  const InventarioRecordDocumentEquality();

  @override
  bool equals(InventarioRecord? e1, InventarioRecord? e2) {
    return e1?.nombreInventario == e2?.nombreInventario &&
        e1?.imagenInventario == e2?.imagenInventario &&
        e1?.precioInventario == e2?.precioInventario &&
        e1?.imagenInventario2 == e2?.imagenInventario2 &&
        e1?.imagenInventario3 == e2?.imagenInventario3 &&
        e1?.descripcionInventario == e2?.descripcionInventario &&
        e1?.categorias == e2?.categorias &&
        e1?.genero == e2?.genero;
  }

  @override
  int hash(InventarioRecord? e) => const ListEquality().hash([
        e?.nombreInventario,
        e?.imagenInventario,
        e?.precioInventario,
        e?.imagenInventario2,
        e?.imagenInventario3,
        e?.descripcionInventario,
        e?.categorias,
        e?.genero
      ]);

  @override
  bool isValidKey(Object? o) => o is InventarioRecord;
}
