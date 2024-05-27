import 'dart:io';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:eduai_parent/core/shared_widgets/custom_app_bar.dart';
import 'package:eduai_parent/core/shared_widgets/custom_button.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../core/shared_widgets/default_text_form_field.dart';
import '../../../../../core/utils/assets/assets.dart';
import '../../../../../core/utils/text_styles/styles.dart';
import 'chat_bubble.dart';


class ReportViewBody extends StatefulWidget {
  const ReportViewBody({super.key});

  @override
  _ReportViewBodyState createState() => _ReportViewBodyState();
}

class _ReportViewBodyState extends State<ReportViewBody> {
  var nameOfTeacher =TextEditingController();
  var nameOfStudent=TextEditingController();
  var grade=TextEditingController();
  var school=TextEditingController();
  var problem=TextEditingController();
  var formKey=GlobalKey<FormState>();
  RecorderController recorderController = RecorderController();
  String? path;
  bool isRecording = false;
  bool isRecordingCompleted = false;
  bool isLoading = true;
  late Directory appDirectory;


  @override
  void initState() {
    super.initState();
    _getDir();
    _initialiseControllers();
  }


  @override
  void dispose() {
    recorderController.dispose();
    super.dispose();
  }
  void _getDir() async {
    appDirectory = await getApplicationDocumentsDirectory();
    path = "${appDirectory.path}/recording.m4a";
    isLoading = false;
    setState(() {});
  }

  void _initialiseControllers() {
    recorderController = RecorderController()
      ..androidEncoder = AndroidEncoder.aac
      ..androidOutputFormat = AndroidOutputFormat.mpeg4
      ..iosEncoder = IosEncoder.kAudioFormatMPEG4AAC
      ..sampleRate = 44100;
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: AppConstants.height20(context),),
          CustomAppBar(title: "Report",prefixIcon: AssetData.back,prefixIconTap: (){
            Navigator.pop(context);
          },),
          SizedBox(height: AppConstants.height20(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              contentPaddingHorizontal: AppConstants.width20(context),
              hintStyle: Styles.hintText(context).copyWith(
                color: const Color(0xff6B7280)
              ),
              validation: (String? value) {
                if (value!.isEmpty) {
                  return "This Field is Required";
                }
              },
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height*.017
              ),textInputType: TextInputType.text, controller: nameOfTeacher,hintText: "Name of Teacher",),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              contentPaddingHorizontal: AppConstants.width20(context),
              hintStyle: Styles.hintText(context).copyWith(
                color: const Color(0xff6B7280)
              ),
              validation: (String? value) {
                if (value!.isEmpty) {
                  return "This Field is Required";
                }
              },
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height*.017
              ),textInputType: TextInputType.text, controller: nameOfStudent,hintText: "Name of Student",),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Row(
              children: [
                Expanded(
                  child: DefaultTextFormField(
                    borderSideEnabledColor: const Color(0xffE2E8F0),
                    contentPaddingVertical: AppConstants.height20(context),
                    contentPaddingHorizontal: AppConstants.width20(context),
                    hintStyle: Styles.hintText(context).copyWith(
                        color: const Color(0xff6B7280)
                    ),
                    validation: (String? value) {
                      if (value!.isEmpty) {
                        return "This Field is Required";
                      }
                    },
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height*.017
                    ),textInputType: TextInputType.number, controller: grade,hintText: "Grade",),
                ),
                SizedBox(width: AppConstants.width20(context),),
                Expanded(
                  child: DefaultTextFormField(
                    borderSideEnabledColor: const Color(0xffE2E8F0),
                    contentPaddingVertical: AppConstants.height20(context),
                    contentPaddingHorizontal: AppConstants.width20(context),
                    hintStyle: Styles.hintText(context).copyWith(
                        color: const Color(0xff6B7280)
                    ),
                    validation: (String? value) {
                      if (value!.isEmpty) {
                        return "This Field is Required";
                      }
                    },
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.height*.017
                    ),textInputType: TextInputType.text, controller: school,hintText: "School",),
                ),
              ],
            ),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: DefaultTextFormField(
              borderSideEnabledColor: const Color(0xffE2E8F0),
              contentPaddingVertical: AppConstants.height20(context),
              contentPaddingHorizontal: AppConstants.width20(context),
              maxLines: 4,
              hintStyle: Styles.hintText(context).copyWith(
                  color: const Color(0xff6B7280)
              ),
              validation: (String? value) {
                if (value!.isEmpty) {
                  return "This Field is Required";
                }
              },
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height*.017
              ),textInputType: TextInputType.text, controller: problem,hintText: "Write the problem ",),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
            child: Container(
              padding: EdgeInsets.all(AppConstants.width20(context)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppConstants.width5(context)),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff),
                        blurRadius: 16,
                        spreadRadius: 0,
                        offset: Offset(0,16)
                    )
                  ],
                  border: Border.all(
                    color: const Color(0xffE2E8F0),
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You can send the report by voice",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height*.014,
                          color: const Color(0xff041631)
                      ),),
                    ],
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Click Microphone",style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: MediaQuery.of(context).size.height*.014,
                          color: AppColors.primaryColor
                      ),),
                    ],
                  ),
                  SizedBox(height: AppConstants.height10(context),),
                  if (isRecordingCompleted)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: WaveBubble(
                            path: path,
                            isSender: true,
                            appDirectory: appDirectory,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              path=null;
                              isRecordingCompleted=false;
                            });
                          },
                          child: SvgPicture.asset(
                            AssetData.delete,
                            color: const Color(0xffCB1000),
                            width: MediaQuery.of(context).size.height * .035,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: isRecording
                        ? AudioWaveforms(
                      enableGesture: true,
                      size: Size(
                          MediaQuery.of(context).size.width / 2,
                          50),
                      recorderController: recorderController,
                      waveStyle:  WaveStyle(
                        waveColor: AppColors.primaryColor,
                        extendWaveform: true,
                        showMiddleLine: false,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.only(left: 18),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15),
                    )
                        : const SizedBox(),
                  ),
                  if (!isRecordingCompleted)
                    IconButton(
                      onPressed: _startOrStopRecording,
                      icon: SvgPicture.asset(
                        AssetData.mic,
                        width: MediaQuery.of(context).size.height * .045,
                        fit: BoxFit.cover,
                      ),
      
                      // Icon(isRecording ? Icons.stop : Icons.mic),
                    ),
                ],
              ),
            ),
          ),
          SizedBox(height: AppConstants.height20(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)*4,),
            child: DefaultButton(onPress: (){}, text: "Save",borderRadius: AppConstants.sp10(context),),
          ),
          SizedBox(height: AppConstants.height10(context),),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)*4,),
            child: DefaultButton(onPress: (){}, text: "Cancel",textColor: AppColors.primaryColor,hasBorder: true,backgroundColor: Colors.white,borderRadius: AppConstants.sp10(context),),
          ),
        ],
      ),
    );
  }
  void _startOrStopRecording() async {
    try {
      if (isRecording) {
        recorderController.reset();

        path = await recorderController.stop(false);

        if (path != null) {
          isRecordingCompleted = true;
          debugPrint(path);
          debugPrint("Recorded file size: ${File(path!).lengthSync()}");
        }
      } else {
        await recorderController.record(path: path); // Path is optional
      }
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      setState(() {
        isRecording = !isRecording;
      });
    }
  }

}

