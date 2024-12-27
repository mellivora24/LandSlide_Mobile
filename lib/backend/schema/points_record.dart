import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PointsRecord extends FirestoreRecord {
  PointsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "lat" field.
  String? _lat;
  String get lat => _lat ?? '';
  bool hasLat() => _lat != null;

  // "long" field.
  String? _long;
  String get long => _long ?? '';
  bool hasLong() => _long != null;

  // "is_connecting" field.
  String? _isConnecting;
  String get isConnecting => _isConnecting ?? '';
  bool hasIsConnecting() => _isConnecting != null;

  // "titl_value" field.
  String? _titlValue;
  String get titlValue => _titlValue ?? '';
  bool hasTitlValue() => _titlValue != null;

  // "rain_flow" field.
  String? _rainFlow;
  String get rainFlow => _rainFlow ?? '';
  bool hasRainFlow() => _rainFlow != null;

  // "humidity_1" field.
  String? _humidity1;
  String get humidity1 => _humidity1 ?? '';
  bool hasHumidity1() => _humidity1 != null;

  // "humidity_2" field.
  String? _humidity2;
  String get humidity2 => _humidity2 ?? '';
  bool hasHumidity2() => _humidity2 != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _lat = snapshotData['lat'] as String?;
    _long = snapshotData['long'] as String?;
    _isConnecting = snapshotData['is_connecting'] as String?;
    _titlValue = snapshotData['titl_value'] as String?;
    _rainFlow = snapshotData['rain_flow'] as String?;
    _humidity1 = snapshotData['humidity_1'] as String?;
    _humidity2 = snapshotData['humidity_2'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('points');

  static Stream<PointsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PointsRecord.fromSnapshot(s));

  static Future<PointsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PointsRecord.fromSnapshot(s));

  static PointsRecord fromSnapshot(DocumentSnapshot snapshot) => PointsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PointsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PointsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PointsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PointsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPointsRecordData({
  String? name,
  String? lat,
  String? long,
  String? isConnecting,
  String? titlValue,
  String? rainFlow,
  String? humidity1,
  String? humidity2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'lat': lat,
      'long': long,
      'is_connecting': isConnecting,
      'titl_value': titlValue,
      'rain_flow': rainFlow,
      'humidity_1': humidity1,
      'humidity_2': humidity2,
    }.withoutNulls,
  );

  return firestoreData;
}

class PointsRecordDocumentEquality implements Equality<PointsRecord> {
  const PointsRecordDocumentEquality();

  @override
  bool equals(PointsRecord? e1, PointsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.lat == e2?.lat &&
        e1?.long == e2?.long &&
        e1?.isConnecting == e2?.isConnecting &&
        e1?.titlValue == e2?.titlValue &&
        e1?.rainFlow == e2?.rainFlow &&
        e1?.humidity1 == e2?.humidity1 &&
        e1?.humidity2 == e2?.humidity2;
  }

  @override
  int hash(PointsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.lat,
        e?.long,
        e?.isConnecting,
        e?.titlValue,
        e?.rainFlow,
        e?.humidity1,
        e?.humidity2
      ]);

  @override
  bool isValidKey(Object? o) => o is PointsRecord;
}
