import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: imageUrl.startsWith('http')
          ? CachedNetworkImage(imageUrl: imageUrl)
          : Image.asset(imageUrl),
    );
  }
}
