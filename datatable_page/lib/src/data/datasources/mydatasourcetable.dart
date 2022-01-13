// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:datatable_page/src/data/models/kdeserts.dart';
import 'package:datatable_page/src/domain/entities/desert.dart';
import 'package:flutter/material.dart';




class MyDataSourceTable extends DataTableSource{
  final bool allowSelection = false;

  final Set<int> _selectedRows = <int>{};
  int _generation = 0;
  int get generation => _generation;
  

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedRows.length;

  @override
  int get rowCount => kDesserts.length * 50;

  set generation(int value) {
    if (_generation == value) return;
    _generation = value;
    notifyListeners();
  }

  
  

  @override
  DataRow getRow(int index) {
    final Dessert dessert = kDesserts[index % kDesserts.length];
    final int page = index ~/ kDesserts.length;

    return DataRow.byIndex(
      index: index,
      selected: _selectedRows.contains(index),
      cells: <DataCell>[
        DataCell(Text('${dessert.name} ($page)')),
        DataCell(Text('${dessert.calories}')),
        DataCell(Text('$generation')),
      ],
      onSelectChanged: allowSelection
          ? (bool? selected) => _handleSelected(index, selected,)
          : null,
    );
  }



  
  

  void _handleSelected(int index, bool? selected,) {
    if (selected == true) {
      _selectedRows.add(index);
    } else {
      _selectedRows.remove(index);
    }
    notifyListeners();
  }

  

  
}
