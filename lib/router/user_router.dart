import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/pages/category_screen.dart';
import 'package:flutter_boilerplate/pages/home_screen.dart';
import 'package:flutter_boilerplate/pages/index_screen.dart';
import 'package:flutter_boilerplate/pages/product_detail_screen.dart';
import 'package:flutter_boilerplate/pages/splash_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      initial: true,
      page: SplashScreen,
    ),
    AutoRoute(
      path: '/index',
      name: "IndexRoute",
      page: IndexScreen,
      children: [
        AutoRoute(
          path: 'home',
          name: 'HomeTab',
          initial: true,
          page: HomeScreen,
        ),
        AutoRoute(
          path: 'category',
          name: 'CategoryTab',
          initial: true,
          page: CategoryScreen,
        ),
        AutoRoute(
          path: 'account',
          name: 'AccountTab',
          initial: true,
          page: Container,
        ),
      ],
    ),
    AutoRoute(
      path: '/product/detail',
      name: 'ProductDetailRoute',
      page: ProductDetailScreen,
    )
  ],
)
class $UserRouter {}
