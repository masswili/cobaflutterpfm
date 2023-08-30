import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../datatable/datatable_last_transaction.dart';
// import 'package:data_table_2/data_table2.dart';
// import 'package:data_table_2/paginated_data_table2.dart';

class Transactionpage extends StatefulWidget {
  const Transactionpage({Key? key}) : super(key: key);

  @override
  State<Transactionpage> createState() => Transactionpagestate();
}

class Transactionpagestate extends State<Transactionpage> {
  bool sortAscending = true;
  int sortColumnIndex = 0;

  final List<DataRow> _dataRows = List<DataRow>.generate(
    100,
    (int index) => DataRow(
      cells: [
        DataCell(Text('Data $index')),
        DataCell(Text('Data ${index + 1}')),
        DataCell(Text('Data ${index + 2}')),
        DataCell(Text('Data ${index + 3}')),
        DataCell(Text('Data ${index + 4}')),
        DataCell(Text('Data ${index + 5}')),
        DataCell(Text('Data ${index + 6}')),
        DataCell(Text('Data ${index + 7}')),
        DataCell(Text('Data ${index + 8}')),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 8,
                        top: 16,
                        right: 8,
                        bottom: 8,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'TRANSAKSI',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50),
                            backgroundColor: Colors.blue,
                          ),
                          child: const Text(
                            "Add",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50),
                            backgroundColor: Colors.green,
                          ),
                          child: const Text(
                            "Edit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50),
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 8),
              child: Container(
                height: 350,
                child: PaginatedDataTable2(
                  sortAscending: sortAscending,
                  sortColumnIndex: sortColumnIndex,
                  columns: [
                    DataColumn2(
                      label: const Text('Kol 1'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Di sini Anda dapat mengatur logika sorting sesuai dengan kebutuhan
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 2'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 2
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 3'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 3
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 4'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 4
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 5'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 5
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 6'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 6
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 7'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 7
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 8'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 8
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                    DataColumn2(
                      label: const Text('Kol 9'),
                      size: ColumnSize.L,
                      onSort: (int columnIndex, bool ascending) {
                        setState(() {
                          sortColumnIndex = columnIndex;
                          sortAscending = ascending;
                          // Logika sorting untuk Kolom 9
                          if (ascending) {
                            // Sorting naik
                            _dataRows.sort((a, b) => a.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    b.cells[columnIndex].child.toString()));
                          } else {
                            // Sorting turun
                            _dataRows.sort((a, b) => b.cells[columnIndex].child
                                .toString()
                                .compareTo(
                                    a.cells[columnIndex].child.toString()));
                          }
                        });
                      },
                    ),
                  ],
                  source: MyDataTableSource(_dataRows),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
