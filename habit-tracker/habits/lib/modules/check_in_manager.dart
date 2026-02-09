import 'habit.dart';
class CheckInManager{
  CheckInManager._()
  {
    sobjHabits = <Habit>{};
  }
  static final instance = CheckInManager._();
  late Set<Habit> sobjHabits;

  Future<void> addCheckIns() async{
    final DateTime dtmNow = DateTime.now();
    final DateTime dtmCheckIn = DateTime(dtmNow.year,dtmNow.month,dtmNow.day);

    for( final objHabit in sobjHabits){
      await objHabit.addCheckIn(dtmCheckIn);
    }
  }
}
