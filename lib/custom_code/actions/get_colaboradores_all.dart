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

Future<List<dynamic>?> getColaboradoresAll(
  BuildContext context,
  String codigo,
  String nome,
  String cpf,
  String cargo,
  String gestor,
  String empresa,
  bool ativo,
) async {
  // Convertendo booleano para string
  String ativoStr = ativo ? 'true' : 'false';

  // Lista para armazenar parâmetros não vazios
  List<String> queryParams = [];

  if (codigo.isNotEmpty) queryParams.add('id=eq.$codigo');
  if (nome.isNotEmpty) queryParams.add('nome=ilike.*$nome*');
  if (cpf.isNotEmpty) queryParams.add('cpf=ilike.*$cpf*');
  if (cargo.isNotEmpty) queryParams.add('cargo=ilike.*$cargo*');
  if (gestor.isNotEmpty) queryParams.add('gestor=ilike.*$gestor*');
  if (empresa.isNotEmpty) queryParams.add('empresa=ilike.*$empresa*');
  queryParams.add('ativo=eq.$ativoStr');
  queryParams.add('select=*');

  // Construindo a URL da API
  final String url =
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1/vw_colabs?' +
          queryParams.join('&');
  final Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1temhweXd1emt4cHBid3NhbHJ5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU2OTY1MDEsImV4cCI6MjAzMTI3MjUwMX0.l2FWUew_ZBt2zUGlPaTTxWdXgJ7s3db7SA_Z0EBYiXU',
    'Range': '0-1000',
  };

  try {
    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data;
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
