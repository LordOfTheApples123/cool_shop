import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWithPlaceHolder extends StatelessWidget {
  const CachedNetworkImageWithPlaceHolder({
    super.key,
    required this.picture, required this.fit,
  });

  final String? picture;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      imageUrl: picture ?? "",
      progressIndicatorBuilder: (context, __, ___) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      errorWidget: (context, __, ___) {
        return FittedBox(
          fit: fit,
          child: const SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text("Картинка в отпуске"),
            ),
          ),
        );
      },
    );
  }
}
