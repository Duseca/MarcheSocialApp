import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/view/screens/sidemenu/orders/cancel_order.dart';
import 'package:marche_social_app/view/widget/checkout_tile.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class TrackOrders extends StatelessWidget {
  const TrackOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Track Order', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                Checkouttile(
                    color: 'Black',
                    leading: Assets.imagesDummyproduct2,
                    qty: '01',
                    size: '41',
                    subtitle1: '€ 270',
                    subtitle2: '  € 400',
                    title: 'Cocooil Body Oil'),
                MyText(
                  text: 'Order Status',
                  weight: FontWeight.w600,
                  paddingTop: 20,
                  size: 16,
                ),
                AnotherStepper(
                  stepperList: stepperData,
                  stepperDirection: Axis.vertical,
                  verticalGap: 30,
                  barThickness: 2,
                  activeBarColor: kPrimaryColor,
                  inActiveBarColor: KSecondaryColor,
                  iconWidth: 20,
                  iconHeight: 20,
                ),
                SizedBox(
                  height: 40,
                ),
                MyButton(
                  onTap: () {},
                  buttonText: 'Contact Seller',
                  radius: 50,
                  mBottom: 12,
                ),
                MyButton(
                  onTap: () {
                    Get.to(() => CancelOrder());
                  },
                  backgroundColor: kWhiteColor,
                  buttonText: 'Cancel Order',
                  outlineColor: KSecondaryColor,
                  fontColor: KSecondaryColor,
                  radius: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<StepperData> stepperData = [
  StepperData(
      title: StepperText(
        "Order Placed",
        textStyle: const TextStyle(
          color: Colors.grey,
        ),
      ),
      subtitle: StepperText("Your order has been placed"),
      iconWidget: iconwidget()),
  StepperData(
      title: StepperText("Preparing"),
      subtitle: StepperText("Your order is being prepared"),
      iconWidget: iconwidget()),
  StepperData(
      title: StepperText("On the way"),
      subtitle: StepperText(
          "Our delivery executive is on the way to deliver your item"),
      iconWidget: iconwidget()),
  StepperData(
    iconWidget: Container(
      decoration: BoxDecoration(
          color: kGrey5Color,
          border: Border.all(
            width: 4,
            color: kGrey2Color,
          ),
          shape: BoxShape.circle),
    ),
    title: StepperText("Delivered",
        textStyle: const TextStyle(
          color: Colors.grey,
        )),
  ),
];
Widget iconwidget() {
  return Container(
    decoration: BoxDecoration(
        color: KSecondaryColor,
        border: Border.all(
          width: 4,
          color: Color(0xffFBCBC2),
        ),
        shape: BoxShape.circle),
  );
}
