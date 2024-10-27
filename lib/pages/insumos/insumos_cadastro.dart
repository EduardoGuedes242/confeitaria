// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/widgets/button.dart';
import 'package:confeitaria/ui/widgets/combobox.dart';
import 'package:confeitaria/ui/widgets/edit.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';

class InsumosCadastroPage extends StatefulWidget {
  const InsumosCadastroPage({super.key});

  @override
  State<InsumosCadastroPage> createState() => _InsumosCadastroPageState();
}

class _InsumosCadastroPageState extends State<InsumosCadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Cadastro de Insumo',
      ),
      backgroundColor: PaletaCores.backgroundWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
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
                          'Ingrediente',
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
                          'Embalagem',
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
              Edit(
                title: 'Descrição',
                controller: TextEditingController(),
                hintText: 'Trigo',
              ),
              SizedBox(height: 14),
              Combobox(
                title: 'Unidade Medida',
                options: [
                  'Gramas',
                  'Kilos',
                  'Unidade',
                  'Metros',
                ],
                onChanged: (value) {},
                hintText: '-Selecione-',
              ),
              SizedBox(height: 14),
              Row(
                children: [
                  EditWithIcon(
                    title: 'Quantidade',
                    hintText: '5',
                    controller: TextEditingController(),
                    iconButton: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calculate,
                      ),
                    ),
                    width: (MediaQuery.sizeOf(context).width / 2) - 25,
                  ),
                  Spacer(),
                  EditWithIcon(
                    title: 'R\$ Preço Custo',
                    hintText: '5,64',
                    controller: TextEditingController(),
                    iconButton: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calculate,
                      ),
                    ),
                    width: (MediaQuery.sizeOf(context).width / 2) - 25,
                  ),
                ],
              ),
              SizedBox(height: 14),
              Combobox(
                title: 'Marca',
                options: [
                  'Italac',
                  'Moça',
                  'Itambe',
                ],
                onChanged: (value) {},
                hintText: 'Selecione',
              ),
              Spacer(),
              Button(
                title: 'Salvar',
                onClick: () {},
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
