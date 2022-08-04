import 'dart:math';

import 'package:flutter/material.dart';
import '../back_page_button.dart';
import '../page_list_tile.dart';

class Page055 extends StatelessWidget {
  const Page055({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const <Widget>[
            PageListTile(
              title: 'DataTableSample',
              page: DataTableSample(),
            ),
            PageListTile(
              title: 'DataTableSample2',
              page: DataTableSample2(),
            ),
            PageListTile(
              title: 'DataTableSort',
              page: DataTableSort(),
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class DataTableSample extends StatelessWidget {
  const DataTableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
          ],
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class DataTableSample2 extends StatefulWidget {
  const DataTableSample2({Key? key}) : super(key: key);

  @override
  State<DataTableSample2> createState() => _DataTableSample2State();
}

class _DataTableSample2State extends State<DataTableSample2> {
  static const int numItems = 10;
  List<bool> selected = List<bool>.generate(numItems, (int index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text('Number'),
              ),
            ],
            rows: List<DataRow>.generate(
              numItems,
              (int index) => DataRow(
                color: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  // All rows will have the same selected color.
                  if (states.contains(MaterialState.selected)) {
                    return Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(0.08);
                  }
                  // Even rows will have a grey color.
                  if (index.isEven) {
                    return Colors.grey.withOpacity(0.3);
                  }
                  return null; // Use default value for other states and odd rows.
                }),
                cells: <DataCell>[DataCell(Text('Row $index'))],
                selected: selected[index],
                onSelectChanged: (bool? value) {
                  setState(() {
                    selected[index] = value!;
                  });
                },
              ),
            ),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}

class DataTableSort extends StatefulWidget {
  const DataTableSort({Key? key}) : super(key: key);

  @override
  State<DataTableSort> createState() => _DataTableSortState();
}

class _DataTableSortState extends State<DataTableSort> {
  final List<Map> _products = List.generate(30, (i) {
    return {"id": i, "name": "Product $i", "price": Random().nextInt(200) + 1};
  });

  int _currentSortColumn = 0;
  bool _isAscending = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: DataTable(
            sortColumnIndex: _currentSortColumn,
            sortAscending: _isAscending,
            headingRowColor: MaterialStateProperty.all(Colors.amber[200]),
            columns: <DataColumn>[
              DataColumn(
                label: const Text(
                  'Id',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onSort: (columnIndex, _) {
                  setState(() {
                    _currentSortColumn = columnIndex;
                    if (_isAscending == true) {
                      _isAscending = false;
                      _products.sort((productA, productB) =>
                          productB['id'].compareTo(productA['id']));
                    } else {
                      _isAscending = true;
                      _products.sort((productA, productB) =>
                          productA['id'].compareTo(productB['id']));
                    }
                  });
                },
              ),
              const DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              DataColumn(
                label: const Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onSort: (columnIndex, _) {
                  setState(() {
                    _currentSortColumn = columnIndex;
                    if (_isAscending == true) {
                      _isAscending = false;
                      _products.sort((productA, productB) =>
                          productB['price'].compareTo(productA['price']));
                    } else {
                      _isAscending = true;
                      _products.sort((productA, productB) =>
                          productA['price'].compareTo(productB['price']));
                    }
                  });
                },
              ),
            ],
            rows: _products.map((item) {
              return DataRow(cells: [
                DataCell(Text(item['id'].toString())),
                DataCell(Text(item['name'])),
                DataCell(Text(item['price'].toString()))
              ]);
            }).toList(),
          ),
        ),
        floatingActionButton: const BackPageButton(),
      ),
    );
  }
}
