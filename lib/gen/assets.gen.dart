/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/gondola.jpg
  AssetGenImage get gondola => const AssetGenImage('assets/images/gondola.jpg');

  /// File path: assets/images/hotel0.jpg
  AssetGenImage get hotel0 => const AssetGenImage('assets/images/hotel0.jpg');

  /// File path: assets/images/hotel1.jpg
  AssetGenImage get hotel1 => const AssetGenImage('assets/images/hotel1.jpg');

  /// File path: assets/images/hotel2.jpg
  AssetGenImage get hotel2 => const AssetGenImage('assets/images/hotel2.jpg');

  /// File path: assets/images/murano.jpg
  AssetGenImage get murano => const AssetGenImage('assets/images/murano.jpg');

  /// File path: assets/images/newdelhi.jpg
  AssetGenImage get newdelhi =>
      const AssetGenImage('assets/images/newdelhi.jpg');

  /// File path: assets/images/paris.jpg
  AssetGenImage get paris => const AssetGenImage('assets/images/paris.jpg');

  /// File path: assets/images/santorini.jpg
  AssetGenImage get santorini =>
      const AssetGenImage('assets/images/santorini.jpg');

  /// File path: assets/images/saopaulo.jpg
  AssetGenImage get saopaulo =>
      const AssetGenImage('assets/images/saopaulo.jpg');

  /// File path: assets/images/stmarksbasilica.jpg
  AssetGenImage get stmarksbasilica =>
      const AssetGenImage('assets/images/stmarksbasilica.jpg');

  /// File path: assets/images/venice.jpg
  AssetGenImage get venice => const AssetGenImage('assets/images/venice.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        gondola,
        hotel0,
        hotel1,
        hotel2,
        murano,
        newdelhi,
        paris,
        santorini,
        saopaulo,
        stmarksbasilica,
        venice
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
