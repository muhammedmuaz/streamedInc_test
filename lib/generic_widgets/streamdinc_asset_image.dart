import 'package:flutter/material.dart';

class StreamdincAssetImage extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;
  final double scale;

  final double? height, width;

  const StreamdincAssetImage({
    Key? key,
    required this.imagePath,
    this.width,
    this.scale = 2,
    this.height,
    this.fit = BoxFit.contain,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imagePath.toLowerCase().endsWith('.png')) {
      return Image.asset(
        imagePath,
        fit: fit,
        scale: scale,
      );
    } else {
      return const Icon(
        Icons.error_outline,
      );
    }
  }
}

// Example usage:
// AssetImageLoader(imageName: 'your_image_name.svg or your_image_name.png')
