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

//import '/backend/schema/structs/index.dart';

Future desconectar(String tabela) async {
  // Add your function code here!
  final supabase = SupaFlow.client;
  String table = tabela;
  final channel = supabase.channel('public:' + table);

  // Desconectar do canal
  await channel.unsubscribe();
}
