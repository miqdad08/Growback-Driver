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

  /// File path: assets/images/add.png
  AssetGenImage get add => const AssetGenImage('assets/images/add.png');

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/box.png
  AssetGenImage get box => const AssetGenImage('assets/images/box.png');

  /// File path: assets/images/cancel.png
  AssetGenImage get cancel => const AssetGenImage('assets/images/cancel.png');

  /// File path: assets/images/carousel_bottom.png
  AssetGenImage get carouselBottom =>
      const AssetGenImage('assets/images/carousel_bottom.png');

  /// File path: assets/images/closeorder.png
  AssetGenImage get closeorder =>
      const AssetGenImage('assets/images/closeorder.png');

  /// File path: assets/images/countdownbg.png
  AssetGenImage get countdownbg =>
      const AssetGenImage('assets/images/countdownbg.png');

  /// File path: assets/images/filter.png
  AssetGenImage get filter => const AssetGenImage('assets/images/filter.png');

  /// File path: assets/images/google_logo.png
  AssetGenImage get googleLogo =>
      const AssetGenImage('assets/images/google_logo.png');

  /// File path: assets/images/ic_location.png
  AssetGenImage get icLocation =>
      const AssetGenImage('assets/images/ic_location.png');

  /// File path: assets/images/image1.png
  AssetGenImage get image1 => const AssetGenImage('assets/images/image1.png');

  /// File path: assets/images/image2.jpg
  AssetGenImage get image2 => const AssetGenImage('assets/images/image2.jpg');

  /// File path: assets/images/image3.jpg
  AssetGenImage get image3 => const AssetGenImage('assets/images/image3.jpg');

  /// File path: assets/images/image4.jpg
  AssetGenImage get image4 => const AssetGenImage('assets/images/image4.jpg');

  /// File path: assets/images/image5.jpg
  AssetGenImage get image5 => const AssetGenImage('assets/images/image5.jpg');

  /// File path: assets/images/image6.jpg
  AssetGenImage get image6 => const AssetGenImage('assets/images/image6.jpg');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo2.png
  AssetGenImage get logo2 => const AssetGenImage('assets/images/logo2.png');

  /// File path: assets/images/no_order.png
  AssetGenImage get noOrder =>
      const AssetGenImage('assets/images/no_order.png');

  /// File path: assets/images/profil.png
  AssetGenImage get profil => const AssetGenImage('assets/images/profil.png');

  /// File path: assets/images/profilbg.png
  AssetGenImage get profilbg =>
      const AssetGenImage('assets/images/profilbg.png');

  /// File path: assets/images/remove.png
  AssetGenImage get remove => const AssetGenImage('assets/images/remove.png');

  /// File path: assets/images/succes.png
  AssetGenImage get succes => const AssetGenImage('assets/images/succes.png');

  /// File path: assets/images/wallet_white.png
  AssetGenImage get walletWhite =>
      const AssetGenImage('assets/images/wallet_white.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        add,
        background,
        box,
        cancel,
        carouselBottom,
        closeorder,
        countdownbg,
        filter,
        googleLogo,
        icLocation,
        image1,
        image2,
        image3,
        image4,
        image5,
        image6,
        logo,
        logo2,
        noOrder,
        profil,
        profilbg,
        remove,
        succes,
        walletWhite
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
