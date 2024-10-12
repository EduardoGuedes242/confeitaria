// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/widgets/button.dart';
import 'package:confeitaria/ui/widgets/combobox.dart';
import 'package:confeitaria/ui/widgets/edit.dart';
import 'package:flutter/material.dart';

class MarcaNewPage extends StatefulWidget {
  const MarcaNewPage({super.key});

  @override
  State<MarcaNewPage> createState() => _MarcaNewPageState();
}

class _MarcaNewPageState extends State<MarcaNewPage> {
  int radioEmbalagem = 1;
  int radioIngrediente = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Cadastro de Marca',
      ),
      backgroundColor: PaletaCores.backgroundWhite,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Embalagens',
                    style: FontsEstilos.textSubTitle,
                  ),
                  Radio(
                    value: radioEmbalagem,
                    groupValue: 0,
                    onChanged: (value) {},
                  ),
                  SizedBox(width: 40),
                  Text(
                    'Ingredientes',
                    style: FontsEstilos.textSubTitle,
                  ),
                  Radio(
                    value: radioIngrediente,
                    groupValue: 0,
                    onChanged: (value) {},
                  ),
                ],
              ),
              SizedBox(height: 8),
              Edit(
                title: 'Nome',
                hintText: 'Ex: Italac',
                controller: TextEditingController(),
              ),
              SizedBox(height: 16),
              Combobox(
                title: 'Tipo Embelagem',
                options: [
                  'Unidade UN',
                  'Metro MT',
                  'Kilo KG',
                  'Grama GR',
                  'Outros',
                ],
                onChanged: (value) {},
                hintText: 'Informe o tipo',
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
