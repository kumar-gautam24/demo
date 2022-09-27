import '../frame_screen/widgets/listdcehostel_item_widget.dart';
import 'controller/frame_controller.dart';
import 'models/listdcehostel_item_model.dart';
import 'package:flutter/material.dart';
import 'package:gautam_kumar_cs_39_s_application1/core/app_export.dart';
import 'package:gautam_kumar_cs_39_s_application1/widgets/custom_search_view.dart';

class FrameScreen extends GetWidget<FrameController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bluegray100,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      340.00,
                    ),
                    width: getHorizontalSize(
                      442.00,
                    ),
                    margin: getMargin(
                      right: 1,
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              right: 1,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  30.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgBackground1,
                                height: getVerticalSize(
                                  340.00,
                                ),
                                width: getHorizontalSize(
                                  441.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              340.00,
                            ),
                            width: getHorizontalSize(
                              442.00,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgVector,
                                    height: getVerticalSize(
                                      340.00,
                                    ),
                                    width: getHorizontalSize(
                                      442.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      all: 1,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVectorGray600,
                                      height: getVerticalSize(
                                        339.00,
                                      ),
                                      width: getHorizontalSize(
                                        440.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            margin: getMargin(
                              left: 56,
                              top: 30,
                              right: 56,
                              bottom: 30,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    left: 78,
                                    right: 77,
                                  ),
                                  child: CommonImageView(
                                    imagePath: ImageConstant.img1664130whitebl,
                                    height: getVerticalSize(
                                      205.00,
                                    ),
                                    width: getHorizontalSize(
                                      161.00,
                                    ),
                                  ),
                                ),
                                CustomSearchView(
                                  width: 316,
                                  focusNode: FocusNode(),
                                  controller: controller.groupThreeController,
                                  hintText: "lbl_search_for_room".tr,
                                  margin: getMargin(
                                    top: 18,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  suffix: Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: IconButton(
                                      onPressed:
                                          controller.groupThreeController.clear,
                                      icon: Icon(
                                        Icons.clear,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    minWidth: getHorizontalSize(
                                      17.00,
                                    ),
                                    minHeight: getVerticalSize(
                                      17.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 27,
                      top: 27,
                      right: 27,
                    ),
                    child: Obx(
                      () => ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller
                            .frameModelObj.value.listdcehostelItemList.length,
                        itemBuilder: (context, index) {
                          ListdcehostelItemModel model = controller
                              .frameModelObj.value.listdcehostelItemList[index];
                          return ListdcehostelItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
