import 'package:flutter_bloc/flutter_bloc.dart';

part 'select_time_type_state.dart';

class SelectTimeTypeCubit extends Cubit<SelectTimeTypeState> {
  SelectTimeTypeCubit() : super(SelectTimeTypeInitial());

  static SelectTimeTypeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeTimeTypeIndex(int index) {
    currentIndex = index;
    emit(SelectTimeTypeSuccessState());
  }
}
