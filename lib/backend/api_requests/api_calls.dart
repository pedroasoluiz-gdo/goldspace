import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Cadastros Group Code

class CadastrosGroup {
  static String getBaseUrl() =>
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
  };
  static ReadEmpresasCall readEmpresasCall = ReadEmpresasCall();
  static ReadCargosCall readCargosCall = ReadCargosCall();
  static ReadSetorCall readSetorCall = ReadSetorCall();
  static ReadGestorCall readGestorCall = ReadGestorCall();
  static ReadCanaisCall readCanaisCall = ReadCanaisCall();
}

class ReadEmpresasCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CadastrosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadEmpresas',
      apiUrl: '$baseUrl/d_empresas?select=*&order=grupo.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? grupo(dynamic response) => (getJsonField(
        response,
        r'''$[:].grupo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idEmpresa(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  List<String>? cadastro(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ReadCargosCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CadastrosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadCargos',
      apiUrl: '$baseUrl/d_cargos?select=*&order=descricao.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idCargo(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cadastro(dynamic response) => (getJsonField(
        response,
        r'''$[:].cadastro''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? tipo(dynamic response) => (getJsonField(
        response,
        r'''$[:].tipo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class ReadSetorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CadastrosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadSetor',
      apiUrl: '$baseUrl/d_setor?select=*&order=descricao.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idSetor(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? criacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].criacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].ativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class ReadGestorCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CadastrosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadGestor',
      apiUrl: '$baseUrl/d_gestor?select=*&order=nome.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idGestor(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? email(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? criacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].criacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? status(dynamic response) => (getJsonField(
        response,
        r'''$[:].ativo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class ReadCanaisCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = CadastrosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadCanais',
      apiUrl: '$baseUrl/d_canais?select=*&order=descricao.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Cadastros Group Code

/// Start APE Group Code

class ApeGroup {
  static String getBaseUrl() =>
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
  };
  static ReadEnvioCall readEnvioCall = ReadEnvioCall();
  static NoventaDiasCall noventaDiasCall = NoventaDiasCall();
  static CreateAPECall createAPECall = CreateAPECall();
}

class ReadEnvioCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? cargo = '',
    String? gestor = '',
    String? empresa = '',
    int? periodo,
    bool? status,
    int? codigo,
  }) async {
    final baseUrl = ApeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadEnvio',
      apiUrl:
          '$baseUrl/vw_c_ape_envio?id=eq.$codigo&nome=ilike.*$nome*&cargo=ilike.*$cargo*&gestor=ilike.*$gestor*&empresa=ilike.*$empresa*&periodo=eq.$periodo&respondido=eq.$status&select=*&order=vencimento.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idApe(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? emailQuemEnviou(dynamic response) => (getJsonField(
        response,
        r'''$[:].email''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? cpf(dynamic response) => (getJsonField(
        response,
        r'''$[:].cpf''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? emailGestor(dynamic response) => (getJsonField(
        response,
        r'''$[:].responsavel''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeColaborador(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeGestor(dynamic response) => (getJsonField(
        response,
        r'''$[:].gestor''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeEmpresa(dynamic response) => (getJsonField(
        response,
        r'''$[:].empresa''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? nomeCargo(dynamic response) => (getJsonField(
        response,
        r'''$[:].cargo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? periodo(dynamic response) => (getJsonField(
        response,
        r'''$[:].periodo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? vencimento(dynamic response) => (getJsonField(
        response,
        r'''$[:].vencimento''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? criacao(dynamic response) => (getJsonField(
        response,
        r'''$[:].criacao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idColab(dynamic response) => (getJsonField(
        response,
        r'''$[:].fk_colab''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<bool>? respondido(dynamic response) => (getJsonField(
        response,
        r'''$[:].respondido''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
}

class NoventaDiasCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = ApeGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'NoventaDias',
      apiUrl: '$baseUrl/vw_colaboradores_90dias?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? idColab(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? nomeColab(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  bool? ativo(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].ativo''',
      ));
  String? admissao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].admissao''',
      ));
  String? contrato(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].contrato''',
      ));
  String? sexo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].sexo''',
      ));
  String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidade''',
      ));
  String? empresa(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].empresa''',
      ));
  String? setor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].setor''',
      ));
  String? cargo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cargo''',
      ));
  String? gestor(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].gestor''',
      ));
  int? fkGestor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].fk_gestor''',
      ));
  int? fkCidade(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].fk_cidade''',
      ));
  int? fkEmpresa(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].fk_empresa''',
      ));
  int? fkSetor(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].fk_setor''',
      ));
  int? fkCargo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].fk_cargo''',
      ));
  int? periodo(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].periodoape''',
      ));
  int? fkcolab(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].fk_colab''',
      ));
}

class CreateAPECall {
  Future<ApiCallResponse> call({
    dynamic registrosJson,
  }) async {
    final baseUrl = ApeGroup.getBaseUrl();

    final registros = _serializeJson(registrosJson, true);
    final ffApiRequestBody = registros;
    return ApiManager.instance.makeApiCall(
      callName: 'CreateAPE',
      apiUrl: '$baseUrl/c_ape_envio',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End APE Group Code

/// Start Chat Group Code

class ChatGroup {
  static String getBaseUrl() =>
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
  };
  static FilteringConversasCall filteringConversasCall =
      FilteringConversasCall();
  static UpsertStatusMensagemCall upsertStatusMensagemCall =
      UpsertStatusMensagemCall();
  static ReadMessagesCall readMessagesCall = ReadMessagesCall();
}

class FilteringConversasCall {
  Future<ApiCallResponse> call({
    String? nome = '',
    String? user = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'FilteringConversas',
      apiUrl:
          '$baseUrl/vw_conversas_geral?select=*&usr_nome=ilike.*$nome*&cvs_usr_id=eq.$user&order=msg_ultima_cadastro.desc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpsertStatusMensagemCall {
  Future<ApiCallResponse> call({
    String? fkMensagem = '',
    String? fkUsuario = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "fkMensagem": "$fkMensagem",
  "fkUsuario": "$fkUsuario"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpsertStatusMensagem',
      apiUrl: '$baseUrl/b_mensagens_status',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Content-Type': 'application/json',
        'Prefer': 'resolution=merge-duplicates',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReadMessagesCall {
  Future<ApiCallResponse> call({
    String? fkConversa = '',
  }) async {
    final baseUrl = ChatGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ReadMessages',
      apiUrl:
          '$baseUrl/b_mensagens?select=*&fkConversa=eq.$fkConversa&order=criacao.desc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Chat Group Code

/// Start Usuarios Group Code

class UsuariosGroup {
  static String getBaseUrl() =>
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
  };
  static FilteringUsersCall filteringUsersCall = FilteringUsersCall();
}

class FilteringUsersCall {
  Future<ApiCallResponse> call({
    String? nome = '',
  }) async {
    final baseUrl = UsuariosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'FilteringUsers',
      apiUrl:
          '$baseUrl/a_users?fullName=ilike.*$nome*&select=*&order=fullName.asc',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Usuarios Group Code

/// Start Processos Group Code

class ProcessosGroup {
  static String getBaseUrl() =>
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
  };
  static FilteringProcessosCall filteringProcessosCall =
      FilteringProcessosCall();
  static CreateChanelsCall createChanelsCall = CreateChanelsCall();
}

class FilteringProcessosCall {
  Future<ApiCallResponse> call({
    int? codigo = 0,
    String? cargo = '',
    String? gestor = '',
    String? empresa = '',
    String? status = '',
  }) async {
    final baseUrl = ProcessosGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'FilteringProcessos',
      apiUrl: '$baseUrl/vw_processos_geral?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateChanelsCall {
  Future<ApiCallResponse> call({
    dynamic resgistrosJson,
  }) async {
    final baseUrl = ProcessosGroup.getBaseUrl();

    final resgistros = _serializeJson(resgistrosJson, true);
    final ffApiRequestBody = resgistros;
    return ApiManager.instance.makeApiCall(
      callName: 'CreateChanels',
      apiUrl: '$baseUrl/c_canaisXprocesso?',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Processos Group Code

class ColaboradoresCall {
  static Future<ApiCallResponse> call({
    String? pesquisador = '',
    String? buscador = '',
    String? status = 'TRUE',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Colaboradores',
      apiUrl:
          'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1/vw_colabs?$buscador=ilike.*$pesquisador*&status=$status',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Range': '0-2000',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessosCall {
  static Future<ApiCallResponse> call({
    String? pesquisador = '',
    String? buscador = '',
    String? status = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Processos',
      apiUrl:
          'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1/vw_processos_geral?$buscador=ilike.*$pesquisador*&and=(status.eq.$status)',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
        'Range': '0-2000',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CidadeCall {
  static Future<ApiCallResponse> call({
    String? estado = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Cidade',
      apiUrl:
          'https://servicodados.ibge.gov.br/api/v1/localidades/estados/$estado/municipios',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? cidade(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
