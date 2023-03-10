import 'package:flutter/material.dart';
import 'package:movilapp/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Bienvenido a las vistas",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://www.wallpaperup.com/uploads/wallpapers/2018/05/08/1266168/7c5fe81643e6887b3fbc433a2f7da499-700.jpg',
              width: 500,
              height: 400,
            ),
            const SizedBox(height: 20.0),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: AppRoutes.menuOptions.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                if (AppRoutes.menuOptions[index].view) {
                  return ListTile(
                    title: Text(
                      AppRoutes.menuOptions[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    subtitle: Text(
                      AppRoutes.menuOptions[index].desc,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    leading: Icon(
                      AppRoutes.menuOptions[index].icon,
                      color: Colors.red,
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Colors.red,
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.menuOptions[index].route,
                      );
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            Container(
              color: Color.fromARGB(255, 249, 48, 34),
              height: 60.0,
              child: const Center(
                child: Text(
                  "MY-APP",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
