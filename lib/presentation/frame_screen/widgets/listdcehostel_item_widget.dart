import '../controller/frame_controller.dart';
import '../models/listdcehostel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gautam_kumar_cs_39_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ListdcehostelItemWidget extends StatelessWidget {
  ListdcehostelItemWidget(this.listdcehostelItemModelObj);

  ListdcehostelItemModel listdcehostelItemModelObj;

  var controller = Get.find<FrameController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 3.5,
        bottom: 3.5,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: getMargin(
              left: 24,
              top: 197,
              bottom: 9,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_dce_hostel".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular16.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_girls_only".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsBold16.copyWith(),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "lbl_mabbi_madahpur".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular16Gray700.copyWith(),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 139,
              top: 231,
              right: 33,
              bottom: 21,
            ),
            child: Text(
              "lbl_300".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsBold18.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
