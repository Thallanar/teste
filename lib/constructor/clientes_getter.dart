import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'clientes.dart';
import 'clientes_exemplos.dart';

class ClientesGetter with ChangeNotifier{
  var json = jsonDecode(exemplosClientes);

  List<Clientes> get cliente => [...json];

}
