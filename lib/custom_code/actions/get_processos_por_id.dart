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

// Additional imports
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<dynamic> getProcessosPorId(int codigo) async {
  final String url =
      'https://mmzhpywuzkxppbwsalry.supabase.co/rest/v1/vw_processos_geral?select=*&id=eq.$codigo';
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
      return data[0];
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
