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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hola Asly!',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: ListView.separated(
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
    );
  }
}
