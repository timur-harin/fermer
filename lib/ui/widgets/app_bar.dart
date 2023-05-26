import 'package:fermer/core/auth/auth_manager.dart';
import 'package:fermer/core/utils/token_api.dart';
import 'package:fermer/ui/kit/colors.dart';
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
        preferredSize: Size.fromWidth(100),
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
                      

                      // Here search bar
                      Spacer(),
                      for (AppBarElement element in elements)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                            onTap: () {
                              
                            },

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Icon(element.icon),
                              Text(element.title),
                          
                            ],)
                          ),
                        ),
                      
                      IconButton(
                        icon: FutureBuilder(builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              if (snapshot.data == true) {
                                return CircleAvatar(radius: 40, backgroundColor: CustomColors.deepGreen, child: FutureBuilder(builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    return Text(snapshot.data![0], style: TextStyle(color: Colors.white, fontSize: 20));
                                  } else {
                                    return Text("-", style: TextStyle(color: Colors.white, fontSize: 20));
                                  }
                                }, future: _getUserName()));
                              } else {
                                return Icon(Icons.door_back_door);
                              }
                            } else {
                              return CircularProgressIndicator();
                            }

                          }, future: AuthorizationManager().isAuthorized(),
                        ),
                        onPressed: () async {
                          showMenu(context: context, 
                          position: RelativeRect.fromLTRB(100, 80, 0, 0),
                          items: 
                            await AuthorizationManager().isAuthorized() ? [
                              PopupMenuItem(child: Text("Профиль"), value: 1),
                              PopupMenuItem(child: Text("Настройки"), value: 2),
                              PopupMenuItem(child: Text("Выйти"), value: 3),
                            ] : [
                              PopupMenuItem(child: Text("Войти"), value: 4)]
                          
                      );},

                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Future<String> _getUserName() async {
  var name = await TokenApi.getName();
  return name;
}

class AppBarElement {
  AppBarElement({required this.title, required this.path, required this.icon});

  final IconData icon;
  final String title;
  final String path;
}
