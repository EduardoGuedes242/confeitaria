// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/button.dart';
import 'package:confeitaria/ui/widgets/combobox.dart';
import 'package:confeitaria/ui/widgets/edit.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class ClientePage extends StatefulWidget {
  const ClientePage({super.key});

  @override
  State<ClientePage> createState() => _ClientePageState();
}

class _ClientePageState extends State<ClientePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cadastro de Clientes',
          style: FontsEstilos.textTitle,
        ),
        backgroundColor: PaletaCores.backgroundWhite,
      ),
      backgroundColor: PaletaCores.backgroundWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Edit(
                title: 'Nome',
                controller: TextEditingController(),
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  EditWithIcon(
                    title: 'Aniversario',
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
                    title: 'CEP',
                    controller: TextEditingController(),
                    iconButton: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                      ),
                    ),
                    width: (MediaQuery.sizeOf(context).width / 2) - 25,
                  ),
                ],
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  IntrinsicWidth(
                    child: Edit(
                      title: 'Endereço',
                      controller: TextEditingController(),
                      width: MediaQuery.sizeOf(context).width - 120,
                    ),
                  ),
                  Spacer(),
                  Edit(
                    title: 'Nº',
                    controller: TextEditingController(),
                    width: 70,
                  ),
                ],
              ),
              SizedBox(height: 14),
              Edit(
                title: 'Bairro',
                controller: TextEditingController(),
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  Combobox(
                    title: 'Cidade',
                    options: [
                      'Vitória',
                      'Serra',
                      'Vila Velha',
                      'Viana',
                      'Outros',
                    ],
                    onChanged: (value) {},
                    width: MediaQuery.sizeOf(context).width - 150,
                    hintText: 'Informe a cidade',
                  ),
                  Spacer(),
                  Combobox(
                    title: 'UF',
                    options: [
                      'ES',
                      'RJ',
                      'SP',
                      'MG',
                      'BG',
                    ],
                    onChanged: (value) {},
                    width: 100,
                    hintText: 'UF',
                  ),
                ],
              ),
              Spacer(),
              Button(
                title: 'Salvar',
                onClick: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
