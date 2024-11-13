// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
//import '/flutter_flow/custom_functions.dart';
import '/auth/supabase_auth/auth_util.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>?> filterAPE90d(
  BuildContext context,
  String periodo,
) async {
  // Convertendo booleano para string

  // Lista para armazenar parâmetros não vazios
  List<String> queryParams = [];

  if (periodo.isNotEmpty) queryParams.add('periodoape=eq.$periodo');
  queryParams.add('select=*');

  // Construindo a URL da API
  final String url =
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1/vw_colaboradores_90dias?' +
          queryParams.join('&');

  //_showMessage(context, 'URL construída: $url');

  // Headers da requisição
  final Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Range': '0-9999',
  };

  try {
    // Faz a solicitação GET
    final response = await http.get(Uri.parse(url), headers: headers);

    // Exibe o status da solicitação
    // _showMessage(context, 'Status da solicitação: ${response.statusCode}');
    //  _showMessage(context, 'Resposta da API: ${response.body}');

    // Verifica se a resposta foi bem-sucedida
    if (response.statusCode == 200) {
      // Converte o corpo da resposta de JSON para Map
      final List<dynamic> data = json.decode(response.body);
      // _showMessage(context, 'Dados decodificados: $data');
      // Retorna os dados
      return data;
    } else {
      //  _showMessage(context, 'Falha ao carregar dados: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    // _showMessage(context, 'Erro: $e');
    return null;
  }
}

void _showMessage(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Mensagem'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
