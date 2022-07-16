import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/router/user_router.gr.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        HomeTab(),
        CategoryTab(),
        AccountTab(),
      ],
      bottomNavigationBuilder: (context, tabRouter) {
        return BottomNavigationBar(
          currentIndex: tabRouter.activeIndex,
          onTap: (index) {
            tabRouter.setActiveIndex(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            )
          ],
        );
      },
    );
  }
}
