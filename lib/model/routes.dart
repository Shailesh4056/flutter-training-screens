import 'package:flutter/material.dart';
import 'package:march_27_tasks/model/product_listing.dart';

import '../home_page.dart';
import '../login_screen.dart';
import '../page_view_screen.dart';
import '../store_details.dart';
import '../store_menu_screen.dart';
import '../varification_screen.dart';

class Routers {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const PageViewScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen(),settings: settings);
      case '/verification':
        return MaterialPageRoute(builder: (_) => const VerificationScreen(),settings: settings);
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage(),settings: settings);
      case '/store_details':
        return MaterialPageRoute(builder: (_) => const StoreDetails(),settings: settings);
        case '/storeMenu':
        return MaterialPageRoute(builder: (_) => const StoreMenuScreen(),settings: settings);
      case '/product_listing':
        return MaterialPageRoute(builder: (_) => const ProductListing(),settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) =>
            const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            ));
    }
  }
}
