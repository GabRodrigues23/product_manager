import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products List',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: theme.secondary,
        foregroundColor: theme.onSecondary,
      ),
      backgroundColor: theme.primaryFixed,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            width: 600,
            padding: EdgeInsets.all(20),
            child: DataTable(
              columnSpacing: 20,
              horizontalMargin: 12,
              headingTextStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              dataTextStyle: TextStyle(fontSize: 14),
              sortColumnIndex: 1,
              columns: [
                DataColumn(
                  label: Text('ID'),
                  columnWidth: FixedColumnWidth(100),
                ),
                DataColumn(
                  label: Text('Description'),
                  columnWidth: FixedColumnWidth(250),
                ),
                DataColumn(label: Text('Category')),
              ],
              rows: List<DataRow>.generate(
                10,
                (index) => DataRow(
                  cells: [
                    DataCell(Text('${1 * (1 + index)}')),
                    DataCell(Text('Produto Teste ${1 * (1 + index)}')),
                    DataCell(Text('Categoria ${1 * (1 + index)}')),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
