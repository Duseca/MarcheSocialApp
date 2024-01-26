// import 'package:flutter/material.dart';
// import 'package:marche_social_app/constants/app_colors.dart';
// import 'package:marche_social_app/constants/app_fonts.dart';
// import 'package:marche_social_app/generated/assets.dart';
// import 'package:marche_social_app/view/widget/common_image_view_widget.dart';
// import 'package:marche_social_app/view/widget/my_text_widget.dart';
//
// class GeneralProductImage extends StatelessWidget {
//   GeneralProductImage({
//     super.key,
//     this.alignment,
//     this.height,
//     this.width,
//     required this.backgroundColor,
//     required this.contRaduis,
//     required this.image,
//     required this.imageHeight,
//     this.imageWidth,
//     required this.imageRaduis,
//     required this.statusContHeight,
//     required this.statusContWidth,
//     required this.statusContbacgColor,
//     required this.statusContRaduis,
//     required this.statusText,
//     required this.userReactImage,
//     required this.productLength,
//     required this.statusTextColor,
//     required this.userReactImageRaduis,
//   });
//   final int productLength;
//   final double? height;
//   final double? width;
//   Alignment? alignment;
//   final Color backgroundColor;
//   final double contRaduis;
//   final String image;
//   final double? imageHeight;
//   final double? imageWidth;
//   final double imageRaduis;
//   final double? statusContHeight;
//   final double? statusContWidth;
//   final Color statusContbacgColor;
//   final double statusContRaduis;
//   final String statusText;
//   final Color statusTextColor;
//   final String userReactImage;
//   final double userReactImageRaduis;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       color: Colors.amber,
//       child: ListView.builder(
//           padding: EdgeInsets.zero,
//           scrollDirection: Axis.horizontal,
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//               margin: EdgeInsets.only(left: 10),
//               alignment: alignment,
//               height: height,
//               decoration: BoxDecoration(
//                 color: backgroundColor,
//                 borderRadius: BorderRadius.circular(contRaduis),
//               ),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         CommonImageView(
//                           imagePath: Assets.imagesLastBlackShoes,
//                           height: imageHeight,
//                           width: imageWidth,
//                           radius: imageRaduis,
//                           fit: BoxFit.fill,
//                         ),
//                         Positioned(
//                           left: 4,
//                           top: 4,
//                           right: 4,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 alignment: Alignment.center,
//                                 height: statusContHeight,
//                                 width: statusContWidth,
//                                 decoration: BoxDecoration(
//                                     color: statusContbacgColor,
//                                     borderRadius: BorderRadius.circular(
//                                         statusContRaduis)),
//                                 child: MyText(
//                                   text: statusText,
//                                   size: 10,
//                                   color: statusTextColor,
//                                   weight: FontWeight.w500,
//                                   fontFamily: AppFonts.OUTFit_DISPLAY,
//                                 ),
//                               ),
//                               Container(
//                                 alignment: Alignment.center,
//                                 height: 24,
//                                 width: 24,
//                                 decoration: BoxDecoration(
//                                   color: klightWhiteColor.withOpacity(0.64),
//                                   borderRadius: BorderRadius.circular(50),
//                                 ),
//                                 child: CommonImageView(
//                                   imagePath: userReactImage,
//                                   height: 16,
//                                   width: 16,
//                                   radius: userReactImageRaduis,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     )
//                   ]),
//             );
//           }),
//     );
//   }
// }
