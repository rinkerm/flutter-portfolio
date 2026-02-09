import 'package:uuid/uuid.dart';
import 'dart:collection';

class Habit{

  late final String _strId;
  late final String _strName;
  late final DateTime _dtmStart;
  late Set<DateTime> _sdtmCheckIns;

  Habit._(String pstrName){
    final uuid = Uuid();
    _strId = uuid.v4();
    _strName = pstrName;
    final DateTime dtmNow = DateTime.now();
    _dtmStart = DateTime(dtmNow.year,dtmNow.month,dtmNow.day);
    _sdtmCheckIns = <DateTime>{};
  }

  String get strId => _strId; 
  String get strName => _strName;
  DateTime get dtmStart => _dtmStart; 
  UnmodifiableSetView<DateTime> get sdtmCheckIns => UnmodifiableSetView(_sdtmCheckIns);

  Future<void> addCheckIn(DateTime pdtmCheckIn) async{
    final dtmCheckIn = DateTime(pdtmCheckIn.year, pdtmCheckIn.month, pdtmCheckIn.day);
    _sdtmCheckIns.add(dtmCheckIn);
  }
}