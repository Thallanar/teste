import 'dart:convert';


import 'package:flutter/material.dart';

import 'package:json_table/json_table.dart';



void main() => runApp(SimpleTable());

class SimpleTable extends StatefulWidget {
  @override
  _SimpleTableState createState() => _SimpleTableState();
}

class _SimpleTableState extends State<SimpleTable> {
  bool toggle = true;

  final String jsonExemplo = '[{"empresas" : "CBSI", "id" : "xxxx","totalCaixas" : "NULL","usuariosVinculados" : "NULL"},'
  '{ "empresas" : "CBSI", "id" : "xxxx", "totalCaixas" : "NULL", "usuariosVinculados" : "NULL"},'
  '{"empresas" : "CBSI","id" : "xxxx", "totalCaixas" : "NULL", "usuariosVinculados" : "NULL"},'
  '{"empresas" : "CBSI", "id" : "xxxx", "totalCaixas" : "NULL", "usuariosVinculados" : "NULL"},'
  '{"empresas" : "CBSI", "id" : "xxxx", "totalCaixas" : "NULL", "usuariosVinculados" : "NULL"}]';


  @override
  Widget build(BuildContext context) {
      var jsonClientes = jsonDecode(jsonExemplo);
      return MaterialApp(
        title: 'AppTest',
        home: Scaffold(
          appBar: AppBar(title: Center(child: Text('AppTeste'))),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Container(
            child: toggle
                ? Column(
                    children: [
                      JsonTable(
                        jsonClientes,
                        showColumnToggle: true,
                        allowRowHighlight: true,
                        rowHighlightColor: Colors.yellow[500]!.withOpacity(0.7),
                        paginationRowCount: 4,
                        onRowSelect: (index, map) {
                          print(index);
                          print(map);
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Text("Simple table which creates table direclty from json")
                    ],
                  )
                : Center(
                    child: Text(getPrettyJSONString(jsonClientes)),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.grid_on),
            onPressed: () {
              setState(
                () {
                  toggle = !toggle;
                },
              );
            }),
      ),
    );
  }

  String getPrettyJSONString(jsonObject) {
    JsonEncoder encoder = new JsonEncoder.withIndent('  ');
    String jsonString = encoder.convert(json.decode(jsonObject));
    return jsonString;
  }
}
