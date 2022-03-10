abstract class Assets {
  static final images = _Images();
}

class _Images {
  static const _basePathImage = 'assets/images';
  static const _basePathSvg = 'assets/svg';

  //png,jpg
  final logo = '$_basePathImage/logo.png';
  final menuCount1 = '$_basePathImage/menu_count1.png';
  final menuCount2 = '$_basePathImage/menu_count2.png';
  final menuCount3 = '$_basePathImage/menu_count3.png';

  final homeDrawer = '$_basePathImage/home_drawer.png';
  final doctorDrawer = '$_basePathImage/doctor_drawer.png';
  final serviceDrawer = '$_basePathImage/service_drawer.png';
  final aboutDrawer = '$_basePathImage/about_drawer.png';
  final campaignDrawer = '$_basePathImage/campaign_drawer.png';
  final locationDrawer = '$_basePathImage/location_drawer.png';

  //svg
  final menuBurger = '$_basePathSvg/menu_burger.svg';
  final notificationIcon = '$_basePathSvg/notification_icon.svg';
  final telIcon = '$_basePathSvg/tel_icon.svg';
  //drawer
  final drawerTop = '$_basePathSvg/drawer_top.svg';
}
