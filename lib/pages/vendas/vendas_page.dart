// ignore_for_file: prefer_const_constructors

import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/text.dart';
import 'package:confeitaria/ui/widgets/app_bar.dart';
import 'package:confeitaria/ui/widgets/button.dart';
import 'package:confeitaria/ui/widgets/combobox.dart';
import 'package:confeitaria/ui/widgets/edit_memo.dart';
import 'package:confeitaria/ui/widgets/edit_with_icon.dart';
import 'package:flutter/material.dart';

class VendaPage extends StatefulWidget {
  const VendaPage({super.key});

  @override
  State<VendaPage> createState() => _VendaPageState();
}

class _VendaPageState extends State<VendaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Dados da venda',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            EditWithIcon(
              title: 'Informe o Cliente *',
              hintText: '',
              controller: TextEditingController(),
              paddingTop: 5,
              iconButton: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person_add_alt,
                ),
              ),
            ),
            Row(
              children: [
                EditWithIcon(
                  title: 'Data da Venda *',
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
                  title: 'Data de Entrega',
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
            Combobox(
              title: 'Forma de Pagamento *',
              options: const [
                'Não definido',
                'Pix',
                'Crédito',
                'Debito',
                'Dinheiro',
              ],
              onChanged: (value) {},
            ),
            EditMemo(
              title: 'Observação Geral',
              controller: TextEditingController(),
            ),
            Button(
              title: 'Adicionar produto',
              onClick: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  isDismissible: false,
                  builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.sizeOf(context).height - 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: <Widget>[
                              EditWithIcon(
                                title: 'Informe o Produto *',
                                hintText: '',
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
                                    title: 'Quantidade *',
                                    controller: TextEditingController(),
                                    iconButton: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.calendar_month,
                                      ),
                                    ),
                                    width:
                                        (MediaQuery.sizeOf(context).width / 2) -
                                            25,
                                  ),
                                  Spacer(),
                                  EditWithIcon(
                                    title: 'R\$ Preço de Venda *',
                                    controller: TextEditingController(),
                                    iconButton: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.calendar_month,
                                      ),
                                    ),
                                    width:
                                        (MediaQuery.sizeOf(context).width / 2) -
                                            25,
                                  ),
                                ],
                              ),
                              EditMemo(
                                title: 'Observação do Item',
                                controller: TextEditingController(),
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Button(
                                    title: 'Cancelar',
                                    onClick: () {
                                      Navigator.of(context).pop();
                                    },
                                    paddingTop: 0,
                                    widthButton:
                                        (MediaQuery.sizeOf(context).width / 2) -
                                            25,
                                    color: Colors.redAccent,
                                  ),
                                  Button(
                                    title: 'Adicionar',
                                    onClick: () {},
                                    paddingTop: 0,
                                    widthButton:
                                        (MediaQuery.sizeOf(context).width / 2) -
                                            25,
                                  ),
                                ],
                              ),
                              SizedBox(height: 14),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              color: PaletaCores.greenPrimary,
            ),
            SizedBox(height: 14),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                        color: PaletaCores.backgroundWhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                'Bolo de Cenoura',
                                style: FontsEstilos.textTitle,
                              ),
                              Text(
                                'R\$ 114,90',
                                style: FontsEstilos.textSubTitle,
                              ),
                              Text(
                                'Obs: item sem nenh...',
                                style: FontsEstilos.textSubTitle,
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: PaletaCores.backgroundWhite,
                            child: Text(
                              'x2',
                              style:
                                  FontsEstilos.textTitle.copyWith(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Text(
              'Total R\$ 1.445,87',
              style: FontsEstilos.textTitle,
            ),
            Spacer(),
            Button(
              title: 'Salvar Venda',
              onClick: () {},
              widthButton: (MediaQuery.sizeOf(context).width / 2) - 25,
              paddingTop: 0,
            ),
          ],
        ),
      ),
    );
  }
}
