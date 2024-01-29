import 'package:flutter/material.dart';
import 'package:marche_social_app/constants/app_colors.dart';
import 'package:marche_social_app/constants/app_fonts.dart';
import 'package:marche_social_app/view/widget/custom_check_box.dart';
import 'package:marche_social_app/view/widget/custom_drop_down.dart';
import 'package:marche_social_app/view/widget/my_text_field.dart';
import 'package:marche_social_app/view/widget/my_text_widget.dart';
import 'package:marche_social_app/view/widget/simple_app_bar.dart';

class UploadProduct extends StatefulWidget {
  const UploadProduct({super.key});

  @override
  State<UploadProduct> createState() => _UploadProductState();
}

String? selectedType;

class _UploadProductState extends State<UploadProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: simpleAppBar(
          context: context, title: 'Upload Product', bgColor: kPrimaryColor),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              physics: const BouncingScrollPhysics(),
              children: [
                richtext('Product Type'),
                Row(
                  children: [
                    productType('Series Product'),
                    productType('Single Product')
                  ],
                ),
                richtext('Product name'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the name for your product',
                ),
                richtext('Category'),
                SizedBox(
                  height: 8,
                ),
                CustomDropDown(
                    heading: '',
                    bgColor: kWhiteColor,
                    hint: 'Mention the category for your product',
                    items: [],
                    onChanged: (Value) {}),
                richtext('Description'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Write about the product',
                  maxLines: 10,
                ),
                richtext('Price'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the price for your product',
                ),
                MyText(text: 'Discount (if any)'),
                SizedBox(
                  height: 8,
                ),
                CustomDropDown(
                    heading: '',
                    bgColor: kWhiteColor,
                    hint: 'Select the discount value',
                    items: [],
                    onChanged: (Value) {}),
                SizedBox(
                  height: 8,
                ),
                richtext('Shipping Fee'),
                SizedBox(
                  height: 8,
                ),
                CustomDropDown(
                    heading: '',
                    bgColor: kWhiteColor,
                    hint: 'Select the amount for delivery',
                    items: [],
                    onChanged: (Value) {}),
                SizedBox(
                  height: 8,
                ),
                richtext('Color'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the color for your product',
                ),
                richtext('Size'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the size for your product',
                ),
                richtext('Quantity'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the quantity  for the product',
                ),
                MyText(text: 'Brand'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the brand for the product',
                ),
                MyText(text: 'Condition'),
                SizedBox(
                  height: 8,
                ),
                CustomDropDown(
                    heading: '',
                    bgColor: kWhiteColor,
                    hint: 'Select the condition',
                    items: [],
                    onChanged: (Value) {}),
                MyText(text: 'Tags(keywords)'),
                SizedBox(
                  height: 8,
                ),
                MyTextField(
                  hint: 'Enter the keywords related to your product',
                ),
                MyText(
                  text: 'Payment Options',
                  weight: FontWeight.bold,
                  size: 14,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      isActive: true,
                      onTap: () {},
                      selectedColor: kBlueColor,
                    ),
                    MyText(
                      text: 'Cash on Delivery',
                      paddingLeft: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      isActive: true,
                      onTap: () {},
                      selectedColor: kBlueColor,
                    ),
                    MyText(
                      text: 'Credit Card/Debit Card',
                      paddingLeft: 10,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomCheckBox(
                      isActive: true,
                      onTap: () {},
                      selectedColor: kBlueColor,
                    ),
                    MyText(
                      text: 'Wallet',
                      paddingLeft: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget richtext(
    String title,
  ) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: title,
          style: TextStyle(
              fontSize: 12,
              fontFamily: AppFonts.OUTFit_DISPLAY,
              fontWeight: FontWeight.w500,
              color: KTertiaryColor)),
      TextSpan(
          text: '*',
          style: TextStyle(
              fontSize: 12,
              fontFamily: AppFonts.OUTFit_DISPLAY,
              fontWeight: FontWeight.w400,
              color: kRedColor))
    ]));
  }

  Widget productType(String Selectedtype) {
    return Expanded(
      child: ListTile(
        leading: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: kGrayColor),
                color: selectedType == Selectedtype ? kBlueColor : kGrayColor)),
        contentPadding: EdgeInsets.all(0),
        title: MyText(
          text: Selectedtype,
          fontFamily: AppFonts.OUTFit_DISPLAY,
        ),
        onTap: () {
          setState(() {
            selectedType = Selectedtype;
          });
        },
      ),
    );
  }
}
