import 'package:confeitaria/pages/clientes/clientes_consulta.dart';
import 'package:confeitaria/pages/compras/consulta_compras_page.dart';
import 'package:confeitaria/pages/marcas/marcas_consulta.dart';
import 'package:confeitaria/pages/insumos/insumos_consulta.dart';
import 'package:confeitaria/pages/vendas/consulta_vendas_page.dart';
import 'package:confeitaria/ui/cores.dart';
import 'package:confeitaria/ui/widgets/item_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            color: PaletaCores.backgroundWhite,
            child: Column(
              children: [
                const SizedBox(height: 150),
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      ItemMenu(
                        title: 'Vendas',
                        nameImage: 'vendas.png',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const VendasConstultaPage();
                              },
                            ),
                          );
                        },
                      ),
                      ItemMenu(
                        title: 'Compras',
                        nameImage: 'compras.png',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const ComprasConstultaPage();
                              },
                            ),
                          );
                        },
                      ),
                      ItemMenu(
                        title: 'Receitas',
                        nameImage: 'receitas.png',
                        onClick: () {},
                      ),
                      ItemMenu(
                        title: 'Financeiro',
                        nameImage: 'fluxo-caixa.png',
                        onClick: () {},
                      ),
                      ItemMenu(
                        title: 'Clientes',
                        nameImage: 'clientes.png',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const ClienteSearchPage();
                              },
                            ),
                          );
                        },
                      ),
                      ItemMenu(
                        title: 'Produtos',
                        nameImage: 'produtos.png',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const InsumosConsultaPage();
                              },
                            ),
                          );
                        },
                      ),
                      ItemMenu(
                        title: 'Marcas',
                        nameImage: 'marcas.png',
                        onClick: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const MarcaSearchPage();
                              },
                            ),
                          );
                        },
                      ),
                      ItemMenu(
                        title: 'Produtos',
                        nameImage: 'produtos.png',
                        onClick: () {},
                      ),
                      ItemMenu(
                        title: 'Marcas',
                        nameImage: 'marcas.png',
                        onClick: () {},
                      ),
                      ItemMenu(
                        title: 'Produtos',
                        nameImage: 'produtos.png',
                        onClick: () {},
                      ),
                      ItemMenu(
                        title: 'Marcas',
                        nameImage: 'marcas.png',
                        onClick: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: PaletaCores.greenPrimary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
