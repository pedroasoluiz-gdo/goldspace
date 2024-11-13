import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case VwNotificacoesRow:
            return VwNotificacoesRow(data);
          case VwConversasGeralRow:
            return VwConversasGeralRow(data);
          case DPublicacoesRow:
            return DPublicacoesRow(data);
          case VwGestorSimplesRow:
            return VwGestorSimplesRow(data);
          case DCidadesRow:
            return DCidadesRow(data);
          case CPadRespostasRow:
            return CPadRespostasRow(data);
          case CProcessosRow:
            return CProcessosRow(data);
          case DPublicacoesSalvosRow:
            return DPublicacoesSalvosRow(data);
          case CSemprocessoRow:
            return CSemprocessoRow(data);
          case BMensagensRow:
            return BMensagensRow(data);
          case VwProcessosGeralRow:
            return VwProcessosGeralRow(data);
          case VwCargosSimplesRow:
            return VwCargosSimplesRow(data);
          case CColaboradoresFormacaoAcademicaRow:
            return CColaboradoresFormacaoAcademicaRow(data);
          case CColaboradoresHistoricoRow:
            return CColaboradoresHistoricoRow(data);
          case DMotivoRow:
            return DMotivoRow(data);
          case CDesligamentoProducaoRow:
            return CDesligamentoProducaoRow(data);
          case BConversasRow:
            return BConversasRow(data);
          case CPadEnvioRow:
            return CPadEnvioRow(data);
          case CColaboradoresEnderecosRow:
            return CColaboradoresEnderecosRow(data);
          case VwColabsRow:
            return VwColabsRow(data);
          case CCanaisXprocessoRow:
            return CCanaisXprocessoRow(data);
          case CDesligamentoSafraRow:
            return CDesligamentoSafraRow(data);
          case DConversasRow:
            return DConversasRow(data);
          case VwColaboradoresFullRow:
            return VwColaboradoresFullRow(data);
          case CApeEnvioRow:
            return CApeEnvioRow(data);
          case VwSetorSimplesRow:
            return VwSetorSimplesRow(data);
          case DNaturezaRow:
            return DNaturezaRow(data);
          case DCanaisRow:
            return DCanaisRow(data);
          case VwCidadesSimplesRow:
            return VwCidadesSimplesRow(data);
          case NotificacoesRow:
            return NotificacoesRow(data);
          case CDesligamentoAdmQuestoesRow:
            return CDesligamentoAdmQuestoesRow(data);
          case VwCPadEnvioRow:
            return VwCPadEnvioRow(data);
          case DSetorRow:
            return DSetorRow(data);
          case VwPadrespondidoRow:
            return VwPadrespondidoRow(data);
          case VwColaboradoresSimplesRow:
            return VwColaboradoresSimplesRow(data);
          case CColaboradoresContatosRow:
            return CColaboradoresContatosRow(data);
          case VwPublicacoesRow:
            return VwPublicacoesRow(data);
          case CDesligamentoAdmRow:
            return CDesligamentoAdmRow(data);
          case DGestorRow:
            return DGestorRow(data);
          case CApeRespostasRow:
            return CApeRespostasRow(data);
          case ViewColaboradoresSimple1Row:
            return ViewColaboradoresSimple1Row(data);
          case CDesligamentoSafraQuestoesRow:
            return CDesligamentoSafraQuestoesRow(data);
          case VwComentariosRow:
            return VwComentariosRow(data);
          case ViewColaboradoresRow:
            return ViewColaboradoresRow(data);
          case VwConversasNaoVistasPorUsuarioRow:
            return VwConversasNaoVistasPorUsuarioRow(data);
          case CColaboradoresEmailsRow:
            return CColaboradoresEmailsRow(data);
          case CDesligamentoProducaoQuestoesRow:
            return CDesligamentoProducaoQuestoesRow(data);
          case CColaboradoresCursosRow:
            return CColaboradoresCursosRow(data);
          case DCargosRow:
            return DCargosRow(data);
          case CApeEnvioHistRow:
            return CApeEnvioHistRow(data);
          case DEmpresasRow:
            return DEmpresasRow(data);
          case DPublicacoesUrlsRow:
            return DPublicacoesUrlsRow(data);
          case VwConversasRow:
            return VwConversasRow(data);
          case DPublicacoesComentariosRow:
            return DPublicacoesComentariosRow(data);
          case VwCApeRespondidoRow:
            return VwCApeRespondidoRow(data);
          case BConversasUsuariosRow:
            return BConversasUsuariosRow(data);
          case VwColaboradores90diasRow:
            return VwColaboradores90diasRow(data);
          case AUsersRow:
            return AUsersRow(data);
          case VwEmpresaSimpleRow:
            return VwEmpresaSimpleRow(data);
          case VwCApeEnvioRow:
            return VwCApeEnvioRow(data);
          case DPublicacoesLikedRow:
            return DPublicacoesLikedRow(data);
          case VwQtdpublicacoesPorUsuarioRow:
            return VwQtdpublicacoesPorUsuarioRow(data);
          case CPadRespostasPontosRow:
            return CPadRespostasPontosRow(data);
          case CDesligamentoRejeitadaRow:
            return CDesligamentoRejeitadaRow(data);
          case CColaboradoresRow:
            return CColaboradoresRow(data);
          case VwConversasNaoVistasRow:
            return VwConversasNaoVistasRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
