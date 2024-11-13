// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PicturesStruct extends BaseStruct {
  PicturesStruct({
    List<String>? photo,
  }) : _photo = photo;

  // "photo" field.
  List<String>? _photo;
  List<String> get photo => _photo ?? const [];
  set photo(List<String>? val) => _photo = val;

  void updatePhoto(Function(List<String>) updateFn) {
    updateFn(_photo ??= []);
  }

  bool hasPhoto() => _photo != null;

  static PicturesStruct fromMap(Map<String, dynamic> data) => PicturesStruct(
        photo: getDataList(data['photo']),
      );

  static PicturesStruct? maybeFromMap(dynamic data) =>
      data is Map ? PicturesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'photo': _photo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'photo': serializeParam(
          _photo,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static PicturesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PicturesStruct(
        photo: deserializeParam<String>(
          data['photo'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'PicturesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PicturesStruct && listEquality.equals(photo, other.photo);
  }

  @override
  int get hashCode => const ListEquality().hash([photo]);
}

PicturesStruct createPicturesStruct() => PicturesStruct();
