// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_fonts.dart';
// import 'package:marche_social_app/constants/app_sizes.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/custom_textformfield.dart';
// import 'package:marche_social_app/view/widget/general_image.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';
//
// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});
//
//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }
//
// class _SearchScreenState extends State<SearchScreen> {
//   TextEditingController searchController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           SingleChildScrollView(
//             child: SafeArea(
//               child: Padding(
//                 padding: AppSizes.DEFAULT,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         CommonImageView(
//                           svgPath: Assets.imagesVector,
//                         ),
//                         Row(
//                           children: [
//                             CommonImageView(
//                               svgPath: Assets.imagesWallet,
//                             ),
//                             MyText(
//                               text: '115.34 €',
//                               color: KTertiaryColor,
//                               weight: FontWeight.w500,
//                               size: 14,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     CustomTextField(
//                       hintText: 'Search',
//                       labelText: '',
//                       hintTextFontColor: kQuarternaryColor,
//                       controller: searchController,
//                       // prefixIcon:CommonImageView(Assets.imagesTextfieldSearchIcon)),
//                       backgroundColor: kWhiteColor,
//                       borderRadius: 10,
//                       borderColor: kQuarternaryColor,
//                     ),
//                     SizedBox(
//                       height: 13,
//                     ),
//                     Container(
//                       alignment: Alignment.centerLeft,
//                       padding: EdgeInsets.only(
//                         left: 15,
//                         top: 10,
//                         bottom: 5,
//                       ),
//                       height: 58,
//                       width: 375,
//                       decoration: BoxDecoration(
//                           color: Color(0xffFF6347).withOpacity(0.15),
//                           borderRadius: BorderRadius.circular(10)),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           MyText(
//                             text: 'Your Address',
//                             color: KTertiaryColor,
//                             size: 10,
//                             weight: FontWeight.w300,
//                           ),
//                           SizedBox(
//                             height: 8,
//                           ),
//                           MyText(
//                             text:
//                                 'House 05, Street 458, Sector G13/1, Islamabad, Pakistan',
//                             color: KTertiaryColor,
//                             size: 12,
//                             weight: FontWeight.w300,
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(9.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           MyText(
//                             text: 'Popular Categories',
//                             size: 14,
//                             weight: FontWeight.w500,
//                             color: KTertiaryColor,
//                             fontFamily: AppFonts.OUTFit_DISPLAY,
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           SizedBox(
//                             height: 220,
//                             child: GridView.count(
//                                 crossAxisCount: 2,
//                                 crossAxisSpacing: 10.0,
//                                 mainAxisSpacing: 10.0,
//                                 shrinkWrap: true,
//                                 childAspectRatio: 30 / 30,
//                                 scrollDirection: Axis.horizontal,
//                                 children: [
//                                   continerImage(
//                                       productImage: Assets.imagesSchoolBag,
//                                       productName: 'Bages'),
//                                   continerImage(
//                                       productImage: Assets.imagesFootwearShoe,
//                                       productName: 'Footwear'),
//                                   continerImage(
//                                       productImage: Assets.imagesWomenDress,
//                                       productName: 'Dresses'),
//                                   continerImage(
//                                       productImage: Assets.imagesWristWatch,
//                                       productName: 'Watches'),
//                                   continerImage(
//                                       productImage: Assets.imagesFashion,
//                                       productName: 'Fashion'),
//                                   continerImage(
//                                       productImage: Assets.imagesJewelry,
//                                       productName: 'Jewellery'),
//                                   continerImage(
//                                       productImage: Assets.imagesTravelBag,
//                                       productName: 'Travel'),
//                                   continerImage(
//                                       productImage: Assets.imagesSportswear,
//                                       productName: 'Sportswear'),
//                                 ]),
//                           ),
//                         ],
//                       ),
//                     ),
//                     MyText(
//                       text: 'Trending Products',
//                       size: 14,
//                       weight: FontWeight.w500,
//                       fontFamily: AppFonts.OUTFit_DISPLAY,
//                     ),
//                     SizedBox(
//                       height: 12,
//                     ),
//                     GeneralProductImage(
//                       backgroundColor: kWhiteColor,
//                       contRaduis: 10,
//                       image: Assets.imagesBlackShoe,
//                       imageWidth: 148,
//                       imageRaduis: 4,
//                       statusContHeight: 20,
//                       statusContWidth: 52,
//                       statusContbacgColor: KSecondaryColor,
//                       statusContRaduis: 2,
//                       statusText: 'Top Seller',
//                       statusTextColor: kWhiteColor,
//                       userReactImage: Assets.imagesHeartImage,
//                       userReactImageRaduis: 25,
//                       productLength: 3,
//                       imageHeight: 134,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             alignment: Alignment.topLeft,
//             height: size.height * 0.150,
//             width: size.width * 1,
//             padding: EdgeInsets.all(5),
//             decoration: BoxDecoration(
//               color: kWhiteColor,
//               borderRadius: BorderRadius.circular(30),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 iconLabel(
//                     iconImage: Assets.imagesHome, label: 'Home', onTap: () {}),
//                 iconLabel(
//                   iconImage: Assets.imagesHomeSearch,
//                   label: 'Discover',
//                   onTap: () {},
//                 ),
//                 iconLabel(
//                     iconImage: Assets.imagesPlayButton,
//                     label: 'Scroll',
//                     onTap: () {}),
//                 iconLabel(
//                     iconImage: Assets.assetsNotificationBing,
//                     label: 'Notifications',
//                     onTap: () {}),
//                 iconLabel(
//                     iconImage: Assets.imagesCarry, label: 'Cart', onTap: () {}),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   //Container Image Widget
//   Widget continerImage(
//       {required String productImage, required String productName}) {
//     return Column(
//       children: [
//         Container(
//           alignment: Alignment.center,
//           height: 60,
//           width: 60,
//           decoration: BoxDecoration(
//             color: Color(0xffFF6347).withOpacity(0.15),
//             borderRadius: BorderRadius.all(
//               Radius.circular(40.0),
//             ),
//           ),
//           child: CommonImageView(
//             imagePath: productImage,
//             height: 30,
//             width: 30,
//           ),
//         ),
//         MyText(text: productName),
//       ],
//     );
//   }
//
//   Widget iconLabel(
//       {required String iconImage,
//       required String label,
//       required VoidCallback onTap}) {
//     return InkWell(
//       onTap: onTap,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           CommonImageView(
//             svgPath: iconImage,
//             height: 24,
//             width: 24,
//           ),
//           Align(
//             alignment: Alignment.center,
//             child: MyText(
//               text: label,
//               color: KTertiaryColor,
//               size: 12,
//               weight: FontWeight.w400,
//               fontFamily: AppFonts.OUTFit_DISPLAY,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
