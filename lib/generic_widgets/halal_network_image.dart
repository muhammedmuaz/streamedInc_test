// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:halal_network/generic_widgets/image/halal_asset_image.dart';
// import 'package:halal_network/services/api_links.dart';
// import 'package:halal_network/services/app_images.dart';

// class HalalNetworkImage extends StatelessWidget {
//   final String imagePath;
//   final BoxFit fit;
//   final BoxFit errorAndPlaceHolderFit;
//   final double paddingValue;

//   const HalalNetworkImage(
//       {Key? key,
//       required this.imagePath,
//       this.fit = BoxFit.contain,
//       this.errorAndPlaceHolderFit = BoxFit.contain,
//       this.paddingValue = 0})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     String imageServerUrl = ApiLinks.imagesUrl;
//     String imageUrl = imageServerUrl + imagePath;
//     // print(imageUrl);
//     final noImage = HalalAssetImage(
//       imagePath: AppImages.imagePlaceHolderIcon,
//       fit: errorAndPlaceHolderFit,
//     );

//     if (imagePath.isEmpty || imagePath == '') {
//       return noImage;
//     }

//     if (imagePath.toLowerCase().contains('.svg')) {
//       return SvgPicture.network(
//         imageUrl,
//         fit: fit,
//         placeholderBuilder: (context) => HalalAssetImage(
//           imagePath: AppImages.imagePlaceHolderIcon,
//           fit: errorAndPlaceHolderFit,
//         ),
//       );
//     }
//     return CachedNetworkImage(
//       imageUrl: imageUrl,
//       // memCacheWidth: 100,
//       // memCacheHeight: 100,
//       placeholder: (context, url) => HalalAssetImage(
//         imagePath: AppImages.imagePlaceHolderIcon,
//         fit: errorAndPlaceHolderFit,
//       ),
//       errorWidget: (context, url, error) => noImage,
//       fit: errorAndPlaceHolderFit,
//     );
//   }
// }
