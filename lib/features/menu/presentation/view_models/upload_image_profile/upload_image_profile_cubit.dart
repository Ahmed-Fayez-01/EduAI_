import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'upload_image_profile_state.dart';

class UploadImageProfileCubit extends Cubit<UploadImageProfileState> {
  UploadImageProfileCubit() : super(UploadImageProfileInitial());

  static UploadImageProfileCubit get(context) => BlocProvider.of(context);

  File? profileImage;
  ImagePicker picker = ImagePicker();

  Future selectProfileImage() async {
    XFile? file;
    emit(SelectProfileImageLoadingState());
    file = await picker.pickImage(source: ImageSource.gallery,imageQuality: 5);
    if (file != null) {
      profileImage = File(file.path);
      emit(SelectProfileImageSuccessState(image: profileImage));
    }
  }

}
