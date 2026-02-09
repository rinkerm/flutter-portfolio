import 'habit.dart';
class CheckInManager{
  CheckInManager._()
  {
    _habits = <Habit>{};
  }
  static final instance = CheckInManager._();
  late Set<Habit> _habits;

  Future<void> addCheckIns() async{
    final DateTime now = DateTime.now();
    final DateTime checkInDate = DateTime(now.year,now.month,now.day);

    for( final habit in _habits){
      await habit.addCheckIn(checkInDate);
    }
  }
}
