import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const _icomoon = 'icomoon';
  static const _kFontFam = 'MyFlutterApp';

  static const IconData truck = IconData(0xe800, fontFamily: _kFontFam);
  static const IconData chat = IconData(0xe801, fontFamily: _kFontFam);
  static const IconData money = IconData(0xe802, fontFamily: _kFontFam);
  static const IconData accountBalanceWallet =
      IconData(0xf008, fontFamily: _kFontFam);

  static const IconData wallet = IconData(0xe910, fontFamily: _icomoon);
  static const IconData delivery = IconData(0xe904, fontFamily: _icomoon);
  static const IconData message = IconData(0xe900, fontFamily: _icomoon);
  static const IconData service = IconData(0xe90f, fontFamily: _icomoon);
}
