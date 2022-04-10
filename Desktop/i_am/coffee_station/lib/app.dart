import 'package:coffee_station/screen/Cart/page/empty_cart.dart';
import 'package:coffee_station/screen/Cart/page/full_card.dart';
import 'package:coffee_station/screen/Cart/page/payment.dart';
import 'package:coffee_station/screen/Cart/payment3.dart';
import 'package:coffee_station/screen/Favourite/page/favourite_delegations.dart';
import 'package:coffee_station/screen/Favourite/page/favourite_product.dart';
import 'package:coffee_station/screen/Favourite/page/favourite_store.dart';
import 'package:coffee_station/screen/GoogleMaps/page/google_map.dart';
import 'package:coffee_station/screen/GoogleMaps/page/home_google_map.dart';
import 'package:coffee_station/screen/GoogleMaps/page/payment_map.dart';
import 'package:coffee_station/screen/GoogleMaps/page/payment_map2.dart';
import 'package:coffee_station/screen/OnBoardingScreen/page/on_boarding_screen.dart';
import 'package:coffee_station/screen/ProductPage/page/product_page.dart';
import 'package:coffee_station/screen/SignUp/page/sign_up.dart';
import 'package:coffee_station/screen/StorePage/page/store_page.dart';
import 'package:coffee_station/screen/StorePage/page/store_product.dart';
import 'package:coffee_station/screen/catergories/page/delegations.dart';
import 'package:coffee_station/screen/catergories/page/discount.dart';
import 'package:coffee_station/screen/catergories/page/product.dart';
import 'package:coffee_station/screen/catergories/page/stores.dart';
import 'package:coffee_station/screen/catergories/page/three_product.dart';
import 'package:coffee_station/screen/loginScreen/page/login_screen.dart';
import 'package:coffee_station/screen/splash_screen.dart';
import 'package:coffee_station/screen/sweet_screen.dart';
import 'package:flutter/material.dart';

import 'main_tabs.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return MaterialApp(
      home: PageView(
        // this widget to make pages swiable , it must be remove in second step (Back)
        controller: controller,
        children: const [
          SplacScreen(),
          OnBoardingScreen(),
          LoginScreen(),
          SignUp(),
          GoogleMap(),
          MainTabs(),
          SweetPage(),
          StoreProducts(),
          StoreScreen(),
          HomeGoogleMap(),
          ProductPage(),
          ProductsScreen(),
          delegationsScreen(),
          DiscountScreen(),
          ThreeProductsScreen(),
          StorePage(),
          FavouriteProduct(),
          FavouriteStore(),
          FavouriteDelegations(),
          EmptyCart(),
          FullCard(),
          Payment(),
          PaymentMap(),
          PaymentMap2(),
          Payement3(),
        ],
      ),
    );
  }
}
