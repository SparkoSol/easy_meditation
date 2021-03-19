/// Holds all the assets of Application.
///
/// Each asset is const [String] that represents tha path of that asset in the
/// asset bundle. All the assets are defined here to promote code reuse and it
/// also simplifies the process of renaming, removing assets, i.e. instead of
/// changing the path at every occurrence, we can just change it at one place.
abstract class Assets {
  static const homeIcon = 'assets/icons/home.png';
  static const lotusIcon = 'assets/icons/lotus.png';
  static const profileIcon = 'assets/icons/profile.png';

  static const bgImage = 'assets/images/bg.png';
  static const englishImage = 'assets/images/English.png';
  static const frenchImage = 'assets/images/French.png';
  static const indiaImage = 'assets/images/India.png';
}