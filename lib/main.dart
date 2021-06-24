import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:table/constructor/clientes_getter.dart';

import 'constructor/clientes.dart';
import 'constructor/clientes_exemplos.dart';

List<Clientes> parseClientes(String listaDeEmpresas){
  final parsed = jsonDecode(listaDeEmpresas).cast<Map<String, dynamic>>();

  return parsed.map<Clientes>((json) => Clientes.fromJson(json)).toList();
}
void main() => runApp(TabelaTeste());

class TabelaTeste extends StatefulWidget {
  const TabelaTeste({Key? key}) : super(key: key);

  @override
  _TabelaTesteState createState() => _TabelaTesteState();
}

class _TabelaTesteState extends State<TabelaTeste> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testes Pré-Construção',
      home: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('Testes Pré-Construção'),
              ),         
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(15),
          child: Container(
            child: toggle 
              ? Column(
                children: [
                  JsonTable(
                    
                  )
                ],
              ),
          ),
        )
      ),
    );
  }
}
