import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            style: ButtonStyle(
              shadowColor: const WidgetStatePropertyAll(Colors.red),
              elevation: const WidgetStatePropertyAll(10),

              backgroundColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.pressed)) {
                  return Colors.green;
                }

                return const Color.fromARGB(255, 80, 72, 0);
              }),
            ),
            onPressed: () {},
            child: Text(
              'Text Button',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Elevated Button',
              style: TextStyle(color: Colors.red),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.access_alarm_sharp),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.account_circle_rounded),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: const CircleBorder(
                eccentricity: 0.41,
                side: BorderSide(color: Colors.green, width: 2),
              ),
            ),
            onPressed: () {},
            child: const Text('OUT'),
          ),
          InkWell(onTap: () {}, child: const Text('Inkwell Button')),

          const BackButton(),
          TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red),
              shadowColor: WidgetStatePropertyAll(Colors.blue),
              elevation: WidgetStatePropertyAll(7),
              padding: WidgetStateProperty.all(EdgeInsets.all(15)),
              
            ),
            onPressed: () {},
            child: Text("Deneme"),

          ),
          Container(height: 200, color: Colors.white),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            onPressed: () {},

            child: Text("Place Bid"),
          ),
        ],
      ),

      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.exit_to_app_sharp),
          ),
          const SizedBox(width: 107),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
          const SizedBox(width: 107),
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.edit)),
        ],
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
    );
  }
}
