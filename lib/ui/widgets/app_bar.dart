import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(100);
}

class _CustomAppBarState extends State<CustomAppBar> {
  List<AppBarElement> elements = [
    AppBarElement(title: "Заказы", path: "/orders", icon: Icons.shopping_cart),
    AppBarElement(title: "Избранное", path: "/favorites", icon: Icons.favorite),
    AppBarElement(title: "Корзина", path: "/cart", icon: Icons.shopping_basket),  
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children:[
                      Image.asset(
                        'assets/icons/icon.png',
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Fresh Market", style: Theme.of(context).textTheme.displayLarge),
                      ), 
                      ]),
                      SizedBox(width: screenSize.width / 20),
                      SearchBar(),
                      for (AppBarElement element in elements)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, element.path);
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Icon(element.icon),
                              Text(element.title),
                          
                            ],)
                          ),
                        ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class AppBarElement {
  AppBarElement({required this.title, required this.path, required this.icon});

  final IconData icon;
  final String title;
  final String path;
}
