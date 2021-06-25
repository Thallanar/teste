// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clientes _$ClientesFromJson(Map<String, dynamic> json) {
  return Clientes(
    empresas: json['empresas'] as String,
    id: json['id'] as String,
    totalCaixas: json['totalCaixas'] as String,
    usuariosVinculados: json['usuariosVinculados'] as String,
  );
}

Map<String, dynamic> _$ClientesToJson(Clientes instance) => <String, dynamic>{
      'empresas': instance.empresas,
      'id': instance.id,
      'totalCaixas': instance.totalCaixas,
      'usuariosVinculados': instance.usuariosVinculados,
    };
