// ignore_for_file: prefer_const_constructors

import 'package:confeitaria/pages/clientes/clientes_cadastro.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/widgets/button.dart';
import 'package:flutter/material.dart';

class ClienteSearchPage extends StatefulWidget {
  const ClienteSearchPage({super.key});

  @override
  State<ClienteSearchPage> createState() => _ClienteSearchPageState();
}

class _ClienteSearchPageState extends State<ClienteSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Consulta de clientes'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const ClienteNewPage();
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
