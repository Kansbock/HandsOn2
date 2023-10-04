import 'package:flutter/material.dart';

class HandsOn2 extends StatefulWidget {
  const HandsOn2({super.key});

  @override
  State<HandsOn2> createState() => _HandsOn2State();
}

class _HandsOn2State extends State<HandsOn2> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Imagens + StatefulWidget'),
          centerTitle: true,

        ),
        body: Column(
          children: [
           Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
                child:isButtonPressed
                    ? Image.asset('assets/imagens/Nave.png', width: 300)
                    : TextButton(
                        style: TextButton.styleFrom(
                          side: const BorderSide(color: Colors.black,
                          ),
                          shape: const BeveledRectangleBorder(),
                          fixedSize: const Size.square(250),
                          backgroundColor:
                              const Color.fromARGB(255, 200, 197, 197),
                          padding: const EdgeInsets.all(16.0),
                        ),
                        onPressed: () {
                          setState(() {
                            isButtonPressed = true;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  size: 36,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Adicionar Imagem',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 50)
                ),
                onPressed: () {
                          setState(() {
                            isButtonPressed = false;
                          });
                    },
                    child: const Text('Resetar Imagem',
                    style: TextStyle(fontSize: 24)),),
            ),
            ]),
      
    );
  }
}