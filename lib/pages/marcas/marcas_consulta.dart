// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/model/marca.dart';
import 'package:confeitaria/pages/clientes/clientes_cadastro.dart';
import 'package:confeitaria/pages/marcas/marcas_cadastro.dart';
import 'package:confeitaria/services/marca_service.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';

class MarcaSearchPage extends StatefulWidget {
  const MarcaSearchPage({super.key});

  @override
  State<MarcaSearchPage> createState() => _MarcaSearchPageState();
}

class _MarcaSearchPageState extends State<MarcaSearchPage> {
  List<MarcaModel> marcas = [];
  final MarcasService _marcaService = MarcasService(); // Instância do service

  @override
  void initState() {
    super.initState();
    fetchMarcas();
  }

  // Função para buscar marcas da API via service
  Future<void> fetchMarcas() async {
    try {
      final fetchedMarcas = await _marcaService.fetchMarcas();
      setState(() {
        marcas = fetchedMarcas;
      });
    } catch (e) {
      print('Erro ao buscar marcas: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Consulta de Marcas'),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  EditWithIcon(
                    title: 'Pesquisar',
                    hintText: 'Nome',
                    controller: TextEditingController(),
                    iconButton: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Todos',
                              style: FontsEstilos.textSubTitle,
                            ),
                            Radio(
                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Ingredientes',
                              style: FontsEstilos.textSubTitle,
                            ),
                            Radio(
                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Embalagens',
                              style: FontsEstilos.textSubTitle,
                            ),
                            Radio(
                              value: 1,
                              groupValue: 0,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width - 20,
              child: ListView.builder(
                itemCount: marcas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(marcas[index].mrcNome!),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const MarcaNewPage();
              },
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: PaletaCores.greenPrimary,
      ),
    );
  }
}
