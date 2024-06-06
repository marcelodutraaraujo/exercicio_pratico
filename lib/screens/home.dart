import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String nome = 'Marcelo Dutra Araújo';
  int idade = 40;
  String profissao = 'Web Developer';
  Uri urlFace = Uri.parse('https://www.facebook.com/marcelo.dutraaraujo');
  Uri urlInsta = Uri.parse('https://www.instagram.com/marcelodutraaraujo/');

  _goToFace() async{
    if (!await launchUrl(urlFace)) {
      throw Exception('Could not launch ' + urlFace.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Center(
                    child: Text(
                      'Dados do aluno que desenvolveu o APP do exercício',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Nome: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        nome,
                        style: const TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Idade: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        idade.toString(),
                        style: const TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Profissão: ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        profissao,
                        style: const TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Siga nas redes: ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const Divider(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: _goToFace, 
                        icon: FaIcon(FontAwesomeIcons.facebook),
                        iconSize: 50,
                        color: Colors.deepOrangeAccent
                      ),
                      IconButton(
                        onPressed: _goToFace, 
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        iconSize: 50,
                        color: Colors.deepOrangeAccent
                      )
                    ],
                  )
                ],
              ),
            ),
          ]
        )     // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}