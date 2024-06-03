import 'package:dotted_line/dotted_line.dart';
import 'package:eduai_parent/core/shared_widgets/custom_button.dart';
import 'package:eduai_parent/core/utils/assets/assets.dart';
import 'package:eduai_parent/core/utils/colors/colors.dart';
import 'package:eduai_parent/core/utils/constants.dart';
import 'package:eduai_parent/features/bus/presentation/views/bus_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/shared_widgets/custom_app_bar.dart';
import '../../../../menu/presentation/views/menu_view.dart';
import '../../../../notifications/presentation/views/notification_view.dart';

class BusViewBody extends StatefulWidget {
  const BusViewBody({super.key});

  @override
  _BusViewBodyState createState() => _BusViewBodyState();
}

class _BusViewBodyState extends State<BusViewBody> {
  GoogleMapController? _controller;
  final LatLng _initialPosition = const LatLng(37.77483, -122.41942); // San Francisco

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  void _zoomIn() {
    _controller?.animateCamera(CameraUpdate.zoomIn());
  }

  void _zoomOut() {
    _controller?.animateCamera(CameraUpdate.zoomOut());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 12.0,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
          ),
          Positioned(
            bottom:0,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppConstants.width20(context)),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width-(AppConstants.width20(context)*2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const BusDetailsView()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(AppConstants.sp10(context)),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: SvgPicture.asset(AssetData.mapDetails,width: MediaQuery.of(context).size.height*.045,),
                          ),
                        ),
                        SizedBox(height: AppConstants.height20(context),),
                        Container(
                          padding: EdgeInsets.all(AppConstants.sp20(context)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppConstants.sp10(context)),
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(0xffF1F5F9)
                            )
                          ),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Reaching in 7 mins",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.016,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(width: AppConstants.width5(context),),
                                  Text("(Drop location)",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.014,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff9B9B9B),
                                  ),),
                                ],
                              ),
                              SizedBox(height: AppConstants.height10(context),),
                              DottedLine(
                                dashLength: AppConstants.width10(context),
                                dashGapLength: AppConstants.width10(context),
                                lineThickness: 2,
                                dashColor: AppColors.primaryColor,
                                dashGapColor: Colors.white,
                              ),
                              SizedBox(height: AppConstants.height10(context),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Students Names:",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.016,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(width: AppConstants.width5(context),),
                                  Expanded(
                                    child: Text("Nada , Ali and Hoda Mohammed Hady",style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9B9B9B),
                                    ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppConstants.height30(context),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Driver Name:",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.016,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(width: AppConstants.width5(context),),
                                  Expanded(
                                    child: Text("Alaa Hassan",style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9B9B9B),
                                    ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppConstants.height5(context),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Assistant Name:",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.016,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(width: AppConstants.width5(context),),
                                  Expanded(
                                    child: Text("Mona Gaber",style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9B9B9B),
                                    ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppConstants.height30(context),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bus No. :",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.016,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(width: AppConstants.width5(context),),
                                  Expanded(
                                    child: Text("MS 1235",style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9B9B9B),
                                    ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppConstants.height5(context),),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bus Speed :",style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.height*.016,
                                    fontWeight: FontWeight.w500,
                                  ),),
                                  SizedBox(width: AppConstants.width5(context),),
                                  Expanded(
                                    child: Text("40 km",style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height*.014,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff9B9B9B),
                                    ),),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppConstants.height20(context),),
                              DefaultButton(onPress: (){}, text: "Call Driver",borderRadius: AppConstants.sp10(context),height: AppConstants.height15(context),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: AppConstants.height20(context),),
              ],
            ),
          ),
          PositionedDirectional(start: AppConstants.height20(context),top: AppConstants.height20(context),child: InkWell(onTap:(){},child: SvgPicture.asset( AssetData.menu,width: MediaQuery.of(context).size.height*.06,))),
          PositionedDirectional(end: AppConstants.height20(context),top: AppConstants.height20(context),child: InkWell(onTap: (){},child: SvgPicture.asset(AssetData.bell!,width: MediaQuery.of(context).size.height*.06,))),

        ],
      ),
    );
  }
}
