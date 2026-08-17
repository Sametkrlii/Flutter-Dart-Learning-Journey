import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key, this.userName});

  final String name = 'Samet';
  final String? userName;

  final ProjectKeys keys = const ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                wordSpacing: 2,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                color: Colors.lime,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            Text(
              'Hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyles.welcomeStyle,
            ),

            Text(
              'Hello $name ${name.length}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: ProjectColors.welcomeColor,
              ),
            ),

            Text(userName ?? '', textAlign: TextAlign.center),

            Text(keys.welcome, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

class ProjectStyles {
  static const TextStyle welcomeStyle = TextStyle(
    wordSpacing: 2,
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    letterSpacing: 2,
    color: Colors.lime,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColors {
  static const Color welcomeColor = Colors.red;
}

class ProjectKeys {
  const ProjectKeys();

  final String welcome = 'Merhaba';
}
