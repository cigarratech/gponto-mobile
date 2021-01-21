import 'package:gponto/database/entities/record.dart';
import 'package:sqflite/sqflite.dart';

import '../db.dart';

class RecordRepository {
  Future<Database> open() async {
    final db = await Db.database();

    await db.execute('''
    create table records (
      id interger primary key autoincrement,
      date text not null,
      enter text not null,
      exit text not null,
      rest text not null)
      ''');

    return db;
  }

  Future<void> insert(Record record) async {
    final db = await open();
    await db.insert(
      'records',
      record.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

    db.close();
  }

  Future<List<Record>> getRecord() async {
    final db = await open();

    List<Map> records = await db.query('records');

    final parsedRecords = records
        .map(
          (record) => Record(
            id: record['id'],
            date: DateTime.parse(record['date']),
            enter: DateTime.parse(record['enter']),
            exit: DateTime.parse(record['exit']),
            rest: DateTime.parse(record['rest']),
          ),
        )
        .toList();
    db.close();
    return parsedRecords;
  }

  Future<void> delete(int recordId) async {
    final db = await open();
    await db.delete('records', where: 'id = ?', whereArgs: [recordId]);
    db.close();
  }
}
