// ignore_for_file: prefer_const_constructors

import 'package:confeitaria/pages/compras/compras_page.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';

class ComprasConstultaPage extends StatelessWidget {
  const ComprasConstultaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Consultar Compras'),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  EditWithIcon(
                    title: 'Pesquisar',
                    hintText: 'Descrição da Compra',
                    paddingTop: 0,
                    controller: TextEditingController(),
                    iconButton: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      EditWithIcon(
                        title: 'Data inicio',
                        controller: TextEditingController(),
                        iconButton: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_month,
                          ),
                        ),
                        width: (MediaQuery.sizeOf(context).width / 2) - 25,
                      ),
                      Spacer(),
                      EditWithIcon(
                        title: 'Data fim',
                        controller: TextEditingController(),
                        iconButton: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_month,
                          ),
                        ),
                        width: (MediaQuery.sizeOf(context).width / 2) - 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.sizeOf(context).width - 20,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Card(
                      elevation: 5,
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: PaletaCores.backgroundWhite,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
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
                return const ComprasPage();
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
