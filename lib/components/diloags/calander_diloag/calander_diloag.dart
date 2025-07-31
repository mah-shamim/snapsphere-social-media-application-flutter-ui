// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class CalanderDiloag extends DatePickerDialog {
  final DateTime? startTime;
  final DateTime? endTime;
  final DateTime? initialTime;
  final DateTime? currentTime;
  @override
  final String? cancelText;
  @override
  final String? confirmText;
  @override
  final String? helpText;
  @override
  final TextInputType? keyboardType;

  @override
  final bool Function(DateTime)? selectableDayPredicate;

  @override
  final String? fieldLabelText;

  @override
  final String? fieldHintText;

  CalanderDiloag(
      {Key? key,
      this.startTime,
      this.endTime,
      this.initialTime,
      this.currentTime,
      this.keyboardType,
      this.cancelText,
      this.confirmText,
      this.helpText,
      this.selectableDayPredicate,
      this.fieldLabelText,
      this.fieldHintText})
      : super(
          key: key,
          initialDate: initialTime ?? DateTime.now().toUtc().toLocal(),
          firstDate: startTime ?? DateTime(1975),
          lastDate: endTime ?? DateTime.now().add(const Duration(days: 10)),
          currentDate: currentTime,
          cancelText: cancelText,
          confirmText: confirmText,
          helpText: helpText,
          keyboardType: keyboardType,
          selectableDayPredicate: selectableDayPredicate,
          fieldLabelText: fieldLabelText,
          fieldHintText: fieldHintText,
        );
}
