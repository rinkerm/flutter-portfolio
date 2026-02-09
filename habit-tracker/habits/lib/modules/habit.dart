import 'package:uuid/uuid.dart';
import 'dart:collection';

class Habit{

  late final String _id;
  late final String _name;
  late final DateTime _startDate;
  late Set<DateTime> _checkIns;

  Habit._(String name){
    final uuid = Uuid();
    _id = uuid.v4();
    _name = name;
    final DateTime now = DateTime.now();
    _startDate = DateTime(now.year,now.month,now.day);
    _checkIns = <DateTime>{};
  }

  String get id => _id; 
  String get name => _name;
  DateTime get startDate => _startDate; 
  UnmodifiableSetView<DateTime> get checkIns => UnmodifiableSetView(_checkIns);

  Future<void> addCheckIn(DateTime checkIn) async{
    final checkInDate = DateTime(checkIn.year, checkIn.month, checkIn.day);
    _checkIns.add(checkInDate);
  }
}