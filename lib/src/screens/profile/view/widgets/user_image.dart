import 'package:flutter/material.dart';
import 'package:flutter_medic/src/config/styles/dimensions.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          AppDimensions.preCircle,
        ),
        child: Material(
          child: Ink.image(
            fit: BoxFit.cover,
            image: NetworkImage(image),
            child: InkWell(onTap: onTap),
          ),
        ),
      ),
    );
  }
}
