import 'package:flutter/material.dart';
import 'package:tyasart/core/constant/imgaeasset.dart';

import '../../../../../controller/reservation/reservation_track_controller.dart';
import 'accompion_date_scomponent.dart';

class AccompionDateSection extends StatelessWidget {
   final  ReservationTrackController trackController;
  const AccompionDateSection({
    super.key, required this.trackController,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       AccompionDateInfo(trackController: trackController,iconName: AppImageAsset.clock,valueText: 'السابعه',typeText: 'الساعة'),
       AccompionDateInfo(trackController: trackController,valueText: 'الاحد',iconName: AppImageAsset.checkDay,typeText: 'اليوم'),
     ],
                            );
  }
}
