///
class AppPage {
  final String _route;
  const AppPage._(this._route);
}

///
abstract class AppPages {
  static const home = AppPage._('/');
}