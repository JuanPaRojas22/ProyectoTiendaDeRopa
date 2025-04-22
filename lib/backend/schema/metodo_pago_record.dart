import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetodoPagoRecord extends FirestoreRecord {
  MetodoPagoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre_tarjeta" field.
  String? _nombreTarjeta;
  String get nombreTarjeta => _nombreTarjeta ?? '';
  bool hasNombreTarjeta() => _nombreTarjeta != null;

  // "ccv" field.
  String? _ccv;
  String get ccv => _ccv ?? '';
  bool hasCcv() => _ccv != null;

  // "fecha_expiracion" field.
  DateTime? _fechaExpiracion;
  DateTime? get fechaExpiracion => _fechaExpiracion;
  bool hasFechaExpiracion() => _fechaExpiracion != null;

  // "numero_tarjeta" field.
  String? _numeroTarjeta;
  String get numeroTarjeta => _numeroTarjeta ?? '';
  bool hasNumeroTarjeta() => _numeroTarjeta != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _nombreTarjeta = snapshotData['nombre_tarjeta'] as String?;
    _ccv = snapshotData['ccv'] as String?;
    _fechaExpiracion = snapshotData['fecha_expiracion'] as DateTime?;
    _numeroTarjeta = snapshotData['numero_tarjeta'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('metodoPago');

  static Stream<MetodoPagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MetodoPagoRecord.fromSnapshot(s));

  static Future<MetodoPagoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MetodoPagoRecord.fromSnapshot(s));

  static MetodoPagoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MetodoPagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MetodoPagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MetodoPagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MetodoPagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MetodoPagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMetodoPagoRecordData({
  String? nombreTarjeta,
  String? ccv,
  DateTime? fechaExpiracion,
  String? numeroTarjeta,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre_tarjeta': nombreTarjeta,
      'ccv': ccv,
      'fecha_expiracion': fechaExpiracion,
      'numero_tarjeta': numeroTarjeta,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class MetodoPagoRecordDocumentEquality implements Equality<MetodoPagoRecord> {
  const MetodoPagoRecordDocumentEquality();

  @override
  bool equals(MetodoPagoRecord? e1, MetodoPagoRecord? e2) {
    return e1?.nombreTarjeta == e2?.nombreTarjeta &&
        e1?.ccv == e2?.ccv &&
        e1?.fechaExpiracion == e2?.fechaExpiracion &&
        e1?.numeroTarjeta == e2?.numeroTarjeta &&
        e1?.user == e2?.user;
  }

  @override
  int hash(MetodoPagoRecord? e) => const ListEquality().hash([
        e?.nombreTarjeta,
        e?.ccv,
        e?.fechaExpiracion,
        e?.numeroTarjeta,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is MetodoPagoRecord;
}
