// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/pages/clientes/clientes_cadastro.dart';
import 'package:confeitaria/pages/produtos/produtos_cadastro.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';

class ProdutoSearchPage extends StatefulWidget {
  const ProdutoSearchPage({super.key});

  @override
  State<ProdutoSearchPage> createState() => _ProdutoSearchPageState();
}

class _ProdutoSearchPageState extends State<ProdutoSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Consulta de Produtos'),
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
                    hintText: 'Descrição',
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
              color: Colors.amber,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const ProdutoNewPage();
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
