// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_fonts.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/custom_textformfield.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';
// import 'package:marche_social_app/view/widget/product_widget.dart';
//
// class ResultScreen extends StatefulWidget {
//   const ResultScreen({super.key});
//
//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }
//
// class _ResultScreenState extends State<ResultScreen> {
//   TextEditingController searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kPrimaryColor,
//       body: SafeArea(
//         child: Column(
//           children: [
//             CustomTextField(
//               hintText: 'Men’s T-shirts',
//               labelText: '',
//               hintTextFontColor: KTertiaryColor,
//               controller: searchController,
//               // prefixIcon:CommonImageView(Assets.imagesTextfieldSearchIcon)),
//               backgroundColor: kWhiteColor,
//               borderRadius: 10,
//               borderColor: kQuarternaryColor,
//               hintTextFontSize: 14,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 MyText(
//                   text: 'Result for “Men’s T-Shirts”',
//                   weight: FontWeight.w300,
//                   color: KSecondaryColor,
//                   fontFamily: AppFonts.OUTFit_DISPLAY,
//                   size: 14,
//                 ),
//                 MyText(
//                   text: '150 found',
//                   weight: FontWeight.w300,
//                   color: kQuarternaryColor,
//                   fontFamily: AppFonts.OUTFit_DISPLAY,
//                   size: 12,
//                 ),
//               ],
//             ),
//             Container(
//               alignment: Alignment.topCenter,
//               height: 25,
//               width: 26,
//               decoration: BoxDecoration(
//                 color: Color(0xffFF6347).withOpacity(0.15),
//                 borderRadius: BorderRadius.circular(4),
//               ),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Container(
//                       width: 18,
//                       decoration: BoxDecoration(
//                         color: KTertiaryColor,
//                         borderRadius: BorderRadius.circular(0),
//                       ),
//                     ),
//                     Container(
//                       width: 12,
//                       decoration: BoxDecoration(
//                         color: KTertiaryColor,
//                         borderRadius: BorderRadius.circular(0),
//                       ),
//                     ),
//                     Container(
//                       width: 4,
//                       decoration: BoxDecoration(
//                         color: KTertiaryColor,
//                         borderRadius: BorderRadius.circular(0),
//                       ),
//                     )
//                   ]),
//             ),
//             Product(
//               image: Assets.imagesComfirtshirt,
//               catagoryText: 'welcom',
//               titleText: 'shirts',
//               rating: 4,
//               numberSold: 230,
//               productPrice: 425,
//               userReactImage: Assets.imagesHeart,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
