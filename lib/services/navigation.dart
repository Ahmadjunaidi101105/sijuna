import 'package:flutter/material.dart';
import '../ui/pages/homepage.dart';
import '../ui/pages/halaman_mitra.dart';
import '../ui/pages/detail_mitra.dart';
import '../ui/pages/detail_artikel.dart';
import '../ui/pages/detail_token.dart';

class Navigation {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => const Homepage(),
      '/halamanMitra': (context) => HalamanMitra(),
      '/detailMitra': (context) => const DetailMitraPage(),
      '/detailArtikel': (context) => const DetailArtikelPage(),
      '/detailToken': (context) => const DetailTokenPage(),
    };
  }
}
