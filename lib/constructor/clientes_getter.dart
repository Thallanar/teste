import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'clientes.dart';
import 'clientes_exemplos.dart';

class ClientesGetter {
  var json = jsonDecode(exemplosClientes);

  List<Clientes> get cliente => [...json];

  // List<Clientes> get procura {
  //   return _cliente.where((client) => client.clienteProcurado).toList();
  // }

  // void addEmpresa(Clientes clients) {
  //   _cliente.add(clients);
  //   notifyListeners();
  // }
}
