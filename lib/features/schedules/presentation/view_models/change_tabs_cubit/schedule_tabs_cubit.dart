import 'package:bloc/bloc.dart';
import 'schedule_tabs_states.dart';

class ScheduleTabsCubit extends Cubit<ScheduleTabsStates> {
  ScheduleTabsCubit() : super(ScheduleTabsStatesInit());

  int selectedTab=0;

  changeScheduleTabs(int index){
    selectedTab=index;
    emit(ScheduleTabsSuccessState());
  }
}
