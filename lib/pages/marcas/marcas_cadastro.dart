// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/widgets/button.dart';
import 'package:confeitaria/ui/widgets/combobox.dart';
import 'package:confeitaria/ui/widgets/edit.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';

class MarcaNewPage extends StatefulWidget {
  const MarcaNewPage({super.key});

  @override
  State<MarcaNewPage> createState() => _MarcaNewPageState();
}

class _MarcaNewPageState extends State<MarcaNewPage> {
  int radioEmbalagem = 1;
  int radioIngredinete = 0;

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
                children: [
                  Text(
                    'Embalagens',
                    style: FontsEstilos.textSubTitle,
                  ),
                  Radio(
                    value: radioEmbalagem,
                    groupValue: 0,
                    onChanged: (value) {
                      setState(() {
                        if (radioEmbalagem == 0) {
                          radioEmbalagem = 1;
                        }
                        if (radioEmbalagem == 1) {
                          radioEmbalagem = 0;
                        }
                      });
                    },
                  ),
                  Spacer(),
                  Text(
                    'Ingredientes',
                    style: FontsEstilos.textSubTitle,
                  ),
                  Radio(
                    value: radioIngredinete,
                    groupValue: 0,
                    onChanged: (value) {
                      setState(() {
                        if (radioIngredinete == 0) {
                          radioIngredinete = 1;
                        }
                        if (radioIngredinete == 1) {
                          radioIngredinete = 0;
                        }
                        print(radioIngredinete);
                      });
                    },
                  ),
                ],
              ),
              Edit(
                title: 'Nome',
                controller: TextEditingController(),
              ),
              SizedBox(height: 14),
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
                hintText: 'Informe a cidade',
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
