import 'package:flutter/material.dart';
import '../../core/theme/theme_controller.dart';
import '../../core/theme/theme_type.dart';

class HomeScreen extends StatelessWidget {
  final ThemeController themeController;

  const HomeScreen({super.key, required this.themeController});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Theme",style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Light Theme
            ElevatedButton(
              onPressed: () {
                themeController.changeTheme(ThemeType.light);
              },
              child: const Text("Light Theme"),
            ),

            /// Dark Theme
            IconButton(
              icon: const Icon(Icons.dark_mode),
              onPressed: () {
                themeController.changeTheme(ThemeType.dark);
              },
            ),

            const SizedBox(height: 20),

            /// Custom Theme (Container click)
            GestureDetector(
              onTap: () {
                themeController.setCustomColor(
                  primaryColor: Colors.red,
                  appBarColor: Colors.blue,
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Tap for RED Custom Theme",
                  style: TextStyle(color: colors.onPrimary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
