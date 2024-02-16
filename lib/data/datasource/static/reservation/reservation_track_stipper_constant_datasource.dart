import 'package:tyasart/core/constant/imgaeasset.dart';

import '../../../../controller/reservation/reservation_track_controller.dart';
import '../../../../view/widgets/reservation/reservation_track/track_stipper_section/track_stipper_component.dart';

List<TrackStipperComponent> stipperContentList (ReservationTrackController trackController)=> [
  TrackStipperComponent(
    trackController: trackController,
    text: 'البحث عن المرافق المناسب',
    iconName: AppImageAsset.trackSearch,
  ),
  TrackStipperComponent(
    trackController:trackController,
    text: 'تم إختيار الشخص المناسب ',
    iconName: AppImageAsset.compionProposal,
  ),
  TrackStipperComponent(
    trackController: trackController,
    text: 'المرافق في طريقة اليك',
    iconName: AppImageAsset.trackOnWay,
  ),
  TrackStipperComponent(
    trackController: trackController,
    text: 'المرافق وصل الي الموقع',
    iconName: AppImageAsset.accompionArrive,
  )
];
