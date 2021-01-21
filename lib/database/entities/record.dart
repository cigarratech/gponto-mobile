import 'package:flutter/material.dart';

class Record {
  int id;
  final DateTime date;
  final DateTime enter;
  final DateTime exit;
  final DateTime rest;

  Record({
    this.id,
    @required this.date,
    @required this.enter,
    @required this.exit,
    @required this.rest,
  });

  Map<String, Object> toMap() {
    return {
      // TODO: Pode dar erro, ficar de olho
      'id': id ?? null,
      'date': date.toIso8601String(),
      'enter': enter.toIso8601String(),
      'exit': exit.toIso8601String(),
      'rest': rest.toIso8601String(),
    };
  }
}
