import 'package:flutter/material.dart';

class MyDataTableSource extends DataTableSource {
  final List<DataRow> _dataRows;

  MyDataTableSource(this._dataRows);

  @override
  DataRow? getRow(int index) {
    if (index >= 0 && index < _dataRows.length) {
      return _dataRows[index];
    }
    return null;
  }

  @override
  int get rowCount => _dataRows.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}
