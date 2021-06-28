import 'package:table/constructor/clientes.dart';

class JsonGet {
  var getter;
  final uri = 'assets/clientes_exemplos.json';

  Future <List<Clientes>> fetchClientes() async{
    final response = await getter.get(uri);
    final list = response.data as List;

    List<Clientes> jsonGet = [];
    for (var json in list){
      final getting = Clientes.fromJson(json);
      jsonGet.add(getting);
    }
    return jsonGet;
  }
}