import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PNetworkImage extends StatelessWidget {
  final String image;
  final BoxFit fit;
  final double width,height;
  const PNetworkImage(this.image, {Key key,this.fit,this.height,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
      fit: fit,
      width: width,
      height: height,
    );
  }
}