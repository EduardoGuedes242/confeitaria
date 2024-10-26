import 'dart:convert';

import 'package:confeitaria/model/marca.dart';
import 'package:http/http.dart' as http;

class MarcaRepository {
  final String baseUrl = 'http://localhost:9897/marca';

  // Método para buscar todas as marcas
  Future<List<MarcaModel>> getMarcas() async {
    final url = Uri.parse(baseUrl);

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> marcasJson = json.decode(response.body);
      return marcasJson.map((json) => MarcaModel.fromJson(json)).toList();
    } else {
      throw Exception('Falha ao buscar marcas: ${response.statusCode}');
    }
  }

  Future<void> createMarca(MarcaModel marca) async {
    final url = Uri.parse(baseUrl);
    final body = json.encode(marca.toJson());

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: body,
    );

    if (response.statusCode != 201) {
      throw Exception('Falha ao criar Marca: ${response.statusCode}');
    }
  }
}
