import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/constants/app_images/assets.dart';
import 'package:marche_social_app/constants/app_sizes.dart';
import 'package:marche_social_app/view/widget/checkout_tile.dart';
import 'package:marche_social_app/view/widget/my_button_widget.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class CancelOrder extends StatefulWidget {
  const CancelOrder({super.key});

  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  List<String> reasons = [
    'I found a better deal elsewhere.',
    'I changed my mind about the purchase.',
    'The product description was unclear.',
    'I accidentally placed a duplicate order.',
    'The delivery time is longer than expected.',
    'I no longer need the product.',
    'Payment issues prevented the order completion.',
    'The product is out of stock.',
    'I ordered the wrong item or variant.',
    'There was an issue with the product availability.',
    'Other'
  ];
  String? selectedREason;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Cancel Order', bgColor: kPrimaryColor),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: ListView(physics: BouncingScrollPhysics(), children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                text: 'Reason',
                paddingTop: 20,
                size: 18,
                weight: FontWeight.w600,
              ),
              SizedBox(
                  height: 650,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: reasons.length,
                      itemBuilder: (context, index) {
                        final language = reasons[index];
                        return ListTile(
                          leading: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 4, color: kGrayColor),
                                  color: selectedREason == language
                                      ? KSecondaryColor
                                      : kGrayColor)),
                          contentPadding: EdgeInsets.all(0),
                          title: MyText(
                            text: language,
                            fontFamily: AppFonts.OUTFit_DISPLAY,
                          ),
                          onTap: () {
                            setState(() {
                              selectedREason = language;
                            });
                          },
                        );
                      })),
              MyTextField(
                maxLines: 7,
                bordercolor: kWhiteColor,
                hint: '\nSpecify the reason',
              ),
              SizedBox(
                height: 20,
              ),
              MyButton(
                onTap: () {},
                buttonText: 'Reason',
                radius: 50,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
