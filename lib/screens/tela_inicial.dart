import 'package:flutter/material.dart';
import '../components/tasks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: const Icon(Icons.add_task),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
          children: const [
            Task(
                'Aprender Flutter no intervalo do curso!',
                'assets/images/flutter.png',
                2),
            Task(
                'Andar de Bike',
                'assets/images/bike.webp',
                5),
            Task(
                'Meditar',
                'assets/images/meditar.jpeg',
                1),
            Task(
                'Ler',
                'assets/images/ler.jpg',
                3),
            Task('Jogar',
                'assets/images/jogar.jpg', 4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        backgroundColor: Colors.blue[100],
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
