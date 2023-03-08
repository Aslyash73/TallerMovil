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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://th.bing.com/th/id/R.e5d1bf485deeb6d56bdee39f297df56a?rik=k0hvmBtjjqH3Hw&pid=ImgRaw&r=0', // Ruta de la imagen
              width: 2000.0, // Ancho de la imagen
              height: 2000.0, // Alto de la imagen
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ListView.separated(
                shrinkWrap: true,
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
            ),
          ],
        ),
      ),
    );
  }
}
