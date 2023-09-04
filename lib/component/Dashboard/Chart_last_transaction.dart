import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

import '../../constants.dart';
import '../../datatable/datatable_last_transaction.dart';
import 'package:cobaflutterpfm/view/transaction.dart';

class ActivityBox extends StatefulWidget {
  const ActivityBox({Key? key}) : super(key: key);

  @override
  State<ActivityBox> createState() => _ActivityBoxState();
}

class _ActivityBoxState extends State<ActivityBox> {
  final List<DataRow> _dataRows = List<DataRow>.generate(
    100,
    (int index) => DataRow(
      cells: [
        DataCell(Text('Data $index')),
        DataCell(Text('Data ${index + 1}')),
        DataCell(Text('Data ${index + 2}')),
      ],
    ),
  );

  TextEditingController _textFieldController = TextEditingController();
  String _dummyData = ""; // Data dummy yang akan ditampilkan

  // void _showDetailModal() {
  //   showDialog(
  //     context: context,
  //     barrierDismissible:
  //         false, // Modal hanya dapat ditutup dengan tombol "Tutup"
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text('Detail'),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             TextField(
  //               controller: _textFieldController,
  //               decoration: InputDecoration(labelText: 'Input Data'),
  //             ),
  //             const SizedBox(
  //               height: 10,
  //             ),
  //             ElevatedButton(
  //               onPressed: () {
  //                 setState(() {
  //                   _dummyData = _textFieldController.text;
  //                 });
  //                 Navigator.of(context).pop();
  //               },
  //               child: Text('Simpan'),
  //             ),
  //           ],
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             child: Text('Tutup'),
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

  @override
  void dispose() {
    _textFieldController.dispose(); // Pastikan untuk membebaskan controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        decoration: BoxDecoration(
          color: BasePalette.green,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 250,
        margin: EdgeInsets.all(8),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Transaksi Terakhir',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PaginatedDataTable2(
                hidePaginator: true,
                columns: [
                  DataColumn2(
                    label: const Text('Kol 1'),
                    size: ColumnSize.L,
                    onSort: (int columnIndex, bool ascending) {},
                  ),
                  DataColumn2(
                    label: const Text('Kol 2'),
                    size: ColumnSize.L,
                    onSort: (int columnIndex, bool ascending) {},
                  ),
                  DataColumn2(
                    label: const Text('Kol 3'),
                    size: ColumnSize.L,
                    onSort: (int columnIndex, bool ascending) {},
                  ),
                ],
                source: MyDataTableSource(_dataRows),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: const Text(
                "Detail",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ActivityBox(),
  ));
}
