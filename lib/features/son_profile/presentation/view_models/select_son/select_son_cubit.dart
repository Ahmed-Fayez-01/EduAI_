import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';


part 'select_son_state.dart';

class SelectSonCubit extends Cubit<SelectSonState> {
  SelectSonCubit() : super(SelectSonInitial());

  int? selectedSonIndex;

  void selectSon(int index)
  {
    selectedSonIndex=index;
    emit(SelectSonSuccessState());
  }
}
