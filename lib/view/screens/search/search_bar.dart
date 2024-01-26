// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_fonts.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/custom_textformfield.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';
//
// class SerachBarScreen extends StatefulWidget {
//   const SerachBarScreen({super.key});
//
//   @override
//   State<SerachBarScreen> createState() => _SerachBarScreenState();
// }
//
// class _SerachBarScreenState extends State<SerachBarScreen> {
//   TextEditingController searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: SingleChildScrollView(
//         child: SafeArea(
//             child: Padding(
//           padding: AppSizes.DEFAULT,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomTextField(
//                 hintText: 'Search',
//                 hintTextFontSize: 16,
//                 labelText: '',
//                 hintTextFontColor: kQuarternaryColor,
//                 controller: searchController,
//                 //prefixIcon: CommonImageView(Assets.imagesTextfieldSearchIcon)),
//                 backgroundColor: kWhiteColor,
//                 borderRadius: 10,
//                 borderColor: kQuarternaryColor,
//               ),
//               SizedBox(
//                 height: 13,
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 padding: EdgeInsets.only(
//                   left: 15,
//                   top: 10,
//                   bottom: 5,
//                 ),
//                 height: 58,
//                 width: 375,
//                 decoration: BoxDecoration(
//                     color: Color(0xffFF6347).withOpacity(0.15),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     MyText(
//                       text: 'Your Address',
//                       color: KTertiaryColor,
//                       size: 10,
//                       weight: FontWeight.w300,
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     MyText(
//                       text:
//                           'House 05, Street 458, Sector G13/1, Islamabad, Pakistan',
//                       color: KTertiaryColor,
//                       size: 12,
//                       weight: FontWeight.w300,
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   MyText(
//                     text: 'Recent search',
//                     size: 16,
//                     weight: FontWeight.w500,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                   ),
//                   MyText(
//                     text: 'Clear all',
//                     size: 12,
//                     weight: FontWeight.w500,
//                     color: KSecondaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: MyText(
//                   text: "No recent Searches",
//                   size: 12,
//                   color: kQuarternaryColor,
//                   weight: FontWeight.w300,
//                   fontFamily: AppFonts.OUTFit_DISPLAY,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   MyText(
//                     text: 'Suggestions',
//                     size: 16,
//                     weight: FontWeight.w500,
//                     color: KTertiaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Shoes',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Alpine blure bag',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Casual shirt',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Silver watch',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Black nike shoes',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Golden ear rings',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   MyText(
//                     text: 'Red lipstick',
//                     size: 16,
//                     weight: FontWeight.w300,
//                     color: kQuarternaryColor,
//                     fontFamily: AppFonts.OUTFit_DISPLAY,
//                     onTap: () {},
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         )),
//       ),
//     );
//   }
// }
