import 'package:flutter/material.dart';
import 'package:task_manager/screens/form_screen.dart';
import '../components/tasks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: const Icon(Icons.add_task),
      ),
      body: ListView(
        children: const [
          Task('Aprender Flutter no intervalo do curso!',
              'assets/images/flutter.png', 2),
          Task('Andar de Bike', 'assets/images/bike.webp', 5),
          Task('Meditar', 'assets/images/meditar.jpeg', 1),
          Task('Ler', 'assets/images/ler.jpg', 3),
          Task('Jogar', 'assets/images/jogar.jpeg', 4),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
