import 'package:flutter/src/widgets/framework.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/profile_screen.dart';

class ProfileRouter extends NuRoute{
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    print("Parametro recebido ${settings.rawParameters['name']}");
    return ProfileScreen(
      onClose: () => nuvigator.pop('Olá, eu sou um retorno de parâmetro! O nome é ${settings.rawParameters['name']}'),
    );
  }

  @override
  String get path => 'profile';

  @override
  ScreenType get screenType => materialScreenType;

}