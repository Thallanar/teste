// import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/material.dart';

part 'clientes.g.dart';

@JsonSerializable()
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

  factory Clientes.fromJson(Map<String, dynamic> json) => _$ClientesFromJson(json);

  Map<String, dynamic> toJson() => _$ClientesToJson(this);
  
}
