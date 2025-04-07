import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final double size;
  final bool isBordered;
  final String? avatarUrl;
  final String? cacheKey;

  const Avatar({
    super.key,
    this.size = 24,
    this.avatarUrl,
    this.cacheKey,
    this.isBordered = true,
  });

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    final avatarIcon = Icon(
      Icons.person_rounded,
      color: colors.onSurfaceVariant,
      size: size / 1.5,
    );

    return Container(
      padding: isBordered ? EdgeInsets.all(2) : null,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isBordered ? Border.all(width: 1, color: colors.primary) : null,
        color: colors.surface,
      ),
      child: ClipOval(
        child: Container(
          color: colors.surfaceDim,
          width: isBordered ? size : size + 6,
          height: isBordered ? size : size + 6,
          child:
              avatarUrl != null
                  ? CachedNetworkImage(
                    imageUrl: avatarUrl!,
                    errorWidget: (context, url, error) => avatarIcon,
                    placeholder: (context, url) => avatarIcon,
                    fit: BoxFit.cover,
                    cacheKey: cacheKey ?? avatarUrl!,
                  )
                  : avatarIcon,
        ),
      ),
    );
  }
}
