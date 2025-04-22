import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DireccionesRecord extends FirestoreRecord {
  DireccionesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  // "referencias" field.
  String? _referencias;
  String get referencias => _referencias ?? '';
  bool hasReferencias() => _referencias != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _provincia = snapshotData['provincia'] as String?;
    _canton = snapshotData['canton'] as String?;
    _distrito = snapshotData['distrito'] as String?;
    _referencias = snapshotData['referencias'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('direcciones');

  static Stream<DireccionesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DireccionesRecord.fromSnapshot(s));

  static Future<DireccionesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DireccionesRecord.fromSnapshot(s));

  static DireccionesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DireccionesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DireccionesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DireccionesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DireccionesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DireccionesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDireccionesRecordData({
  String? nombre,
  DocumentReference? user,
  String? provincia,
  String? canton,
  String? distrito,
  String? referencias,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'user': user,
      'provincia': provincia,
      'canton': canton,
      'distrito': distrito,
      'referencias': referencias,
    }.withoutNulls,
  );

  return firestoreData;
}

class DireccionesRecordDocumentEquality implements Equality<DireccionesRecord> {
  const DireccionesRecordDocumentEquality();

  @override
  bool equals(DireccionesRecord? e1, DireccionesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.user == e2?.user &&
        e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton &&
        e1?.distrito == e2?.distrito &&
        e1?.referencias == e2?.referencias;
  }

  @override
  int hash(DireccionesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.user,
        e?.provincia,
        e?.canton,
        e?.distrito,
        e?.referencias
      ]);

  @override
  bool isValidKey(Object? o) => o is DireccionesRecord;
}
