import 'package:get/get.dart';
import 'package:todo_master/core/consts/imageasset.dart';
import 'package:todo_master/data/model/onBoardingModel.dart';

List<onboardingModel> onBoardingList = [
  onboardingModel(
    image: ImageAsset.manage,
    title: 'OBOneTitle'.tr,
    body: "OBOneBody".tr,
  ),
  onboardingModel(
    image: ImageAsset.organize,
    title: "OBTowTitle".tr,
    body: "OBTowBody".tr,
  ),
  onboardingModel(
    image: ImageAsset.achieve,
    title: "OBThreeTitle".tr,
    body: "OBThreeBody".tr,
  ),
];
