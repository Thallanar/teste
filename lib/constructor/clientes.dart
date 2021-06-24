import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:table/constructor/clientes_exemplos.dart';

class Clientes with ChangeNotifier {
  final String empresas;
  final String id;
  final String totalCaixas;
  final String usuariosVinculados;

  Clientes({
    required this.empresas,
    required this.id,
    required this.totalCaixas,
    required this.usuariosVinculados,
  });

  factory Clientes.fromJson(json) {
    return Clientes(
        empresas: json['empresas'],
        id: json['id'],
        totalCaixas: json['totalCaixas'],
        usuariosVinculados: json['usuariosVinculados']);
  }

  // var json = jsonDecode(exemplosClientes);

}
