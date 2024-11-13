import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime formatDateString(String dateTimeString) {
  try {
    // Primeiro, tenta fazer o parsing diretamente, o que normalmente preserva o fuso horário.
    DateTime dateTime = DateTime.parse(dateTimeString);

    // Se o dateTime está em UTC, podemos convertê-lo para o horário local.
    if (dateTime.isUtc) {
      return dateTime.toLocal();
    } else {
      return dateTime;
    }
  } catch (e) {
    throw FormatException("Formato de data inválido: $dateTimeString");
  }
}

double calcularProgresso(
  DateTime dataInicio,
  DateTime dataFim,
) {
  DateTime hoje = DateTime.now();

  if (dataFim.isBefore(hoje) || dataFim.isAtSameMomentAs(hoje)) {
    return 1.0;
  }

  int totalDias = dataFim.difference(dataInicio).inDays;
  int diasPassados = hoje.difference(dataInicio).inDays;

  if (totalDias == 0) {
    return 1.0;
  }

  double progresso = diasPassados / totalDias;
  return progresso.clamp(0.0, 1.0);
}

List<dynamic> formataListCity(String? nomeCompleto) {
  // Verifica se o nomeCompleto é nulo ou vazio
  if (nomeCompleto == null || nomeCompleto.isEmpty) {
    // Retorna valores vazios caso o nomeCompleto seja nulo ou vazio
    return [
      {'cidade': '', 'uf': ''}
    ];
  }

  // Divide a string pelo caractere '-'
  List<String> partes = nomeCompleto.split('-');

  // Verifica se a string contém tanto cidade quanto UF
  if (partes.length == 2) {
    String cidade = partes[0].trim(); // Remove possíveis espaços extras
    String uf = partes[1].trim(); // Remove possíveis espaços extras
    return [
      {'cidade': cidade, 'uf': uf}
    ];
  } else {
    // Retorna valores vazios caso o formato esteja incorreto
    return [
      {'cidade': '', 'uf': ''}
    ];
  }
}

bool maiorQueHoje(String data) {
  // Defina o formato esperado da string de data
  //DateForma dateFormat = DateFormat('yyyy-MM-dd'); // Exemplo: "2024-10-18"

  // Converte a string para um objeto DateTime
  DateTime inputDate = DateTime.parse(data);

  // Pega a data atual (sem considerar a hora)
  DateTime today = DateTime.now();
  DateTime currentDate = DateTime(today.year, today.month, today.day);

  // Retorna se a data de entrada é antes ou igual à data atual
  return inputDate.isBefore(currentDate) ||
      inputDate.isAtSameMomentAs(currentDate);
}

List<dynamic> convertJson(List<ApeStruct> listaApe) {
  return listaApe.map((ape) {
    return {
      'nome': ape.nome,
      'fk_gestor': ape.fkGestor,
      'fk_empresa': ape.fkEmpresa,
      'fk_cargo': ape.fkCargo,
      'fk_colab': ape.fkColab,
      'periodo': ape.periodoape,
      'vencimento': ape.vencimento,
    };
  }).toList();
}

String formatDate(String data) {
  if (data.contains('-')) {
    // Converte de "aaaa-mm-dd" para "dd/mm/aaaa"
    DateTime dataFormatada = DateTime.parse(data);
    return '${dataFormatada.day.toString().padLeft(2, '0')}/${dataFormatada.month.toString().padLeft(2, '0')}/${dataFormatada.year}';
  } else if (data.contains('/')) {
    // Converte de "dd/mm/aaaa" para "aaaa-mm-dd"
    List<String> partes = data.split('/');
    return '${partes[2]}-${partes[1].padLeft(2, '0')}-${partes[0].padLeft(2, '0')}';
  } else {
    throw FormatException('Formato de data inválido');
  }
}

DateTime formatarDataParaSalvar(String data) {
  List<String> dataSplit = data.split('/');

  int dia = int.parse(dataSplit[0]);
  int mes = int.parse(dataSplit[1]);
  int ano = int.parse(dataSplit[2]);
  return DateTime(ano, mes, dia);
}
