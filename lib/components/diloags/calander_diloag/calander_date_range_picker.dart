// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class CalenderDateRangePicker extends DateRangePickerDialog {
  @override
  final DateTime firstDate;
  @override
  final DateTime lastDate;
  @override
  final DateTime? currentDate;
  const CalenderDateRangePicker(
      {super.key,
      required this.firstDate,
      this.currentDate,
      required this.lastDate})
      : super(
            firstDate: firstDate,
            lastDate: lastDate,
            currentDate: currentDate,
            initialEntryMode: DatePickerEntryMode.input);
}
