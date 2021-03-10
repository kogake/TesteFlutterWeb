import 'package:flutter/material.dart';
import 'package:flutterando/DataTable/linhaDados.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  List<linhaDados> listaDados;
  @override
  void initState() {
    listaDados = linhaDados.getlinhaDados();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Table Demo'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: tableBody(
              context,
            ),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView tableBody(BuildContext ctx) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Quantidade',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Cliente',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Mercadoria',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Preço',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Pago?',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Saiu',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Funcionario',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: listaDados
              .map(
                (listaDado) => DataRow(cells: [
                  DataCell(Text(listaDado.quantidade.toString())),
                  DataCell(Text(listaDado.nomeCliente)),
                  DataCell(Text('${listaDado.mercadoria}')),
                  DataCell(Text('${listaDado.preco.toString()}')),
                  DataCell(Text('${listaDado.pago.toString()}')),
                  DataCell(Text('${listaDado.saiu.toString()}')),
                  DataCell(Text('${listaDado.funcionario}')),
                ]),
              )
              .toList(),
        ),
      ),
    );
  }
}
