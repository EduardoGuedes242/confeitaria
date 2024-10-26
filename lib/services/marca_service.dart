import 'package:confeitaria/model/marca.dart';
import 'package:confeitaria/repositories/marca_repository.dart';

class MarcasService {
  final MarcaRepository _marcaRepository = MarcaRepository();

  Future<List<MarcaModel>> fetchMarcas() async {
    try {
      return await _marcaRepository.getMarcas();
    } catch (e) {
      print('Erro ao buscar marcas: $e');
      throw Exception('Erro ao buscar marcas');
    }
  }

  Future<void> addMarca({String? nome}) async {
    final marca = MarcaModel(mrcNome: nome);

    try {
      await _marcaRepository.createMarca(marca);
    } catch (e) {
      print('Erro ao adicionar marca: $e');
      throw Exception('Erro ao adicionar marca');
    }
  }
}
