import 'package:flutter/material.dart';
import 'main.dart';

class PrincipalPage extends StatefulWidget {
  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {

  int pagina = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Principal'),
        backgroundColor: Color(0xFF1D1D1D),
        foregroundColor: Colors.white,
      ),

      // MENU LATERAL
      // Aparece somente na tela inicial
      drawer: pagina == 0
          ? Drawer(
              child: ListView(
                children: [

                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color(0xFF001D1D),
                    ),

                    child: Text(
                      'MENU',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Início'),

                    onTap: () {
                      setState(() {
                        pagina = 0;
                      });

                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.work),
                    title: Text('Trabalho'),

                    onTap: () {
                      setState(() {
                        pagina = 1;
                      });

                      Navigator.pop(context);
                    },
                  ),

                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Sair'),

                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,

                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),

                        (route) => false,
                      );
                    },
                  ),
                ],
              ),
            )
          : null,

      // TELAS
      body: pagina == 0

          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  Icon(
                    Icons.waving_hand,
                    size: 70,
                    color: Color(0xFF1D1D1D),
                  ),

                  SizedBox(height: 20),

                  Text(
                    'Sejam Bem Vindos!',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF001D1D),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Bem-vindo ao sistema!',
                  ),
                ],
              ),
            )

          // TRABALHO
          : pagina == 1

              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Icon(
                        Icons.work,
                        size: 70,
                        color: Color(0xFF1D1D00),
                      ),

                      SizedBox(height: 20),

                      Text(
                        'Tela de Trabalho',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1D1D1D),
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Área de trabalho do sistema.',
                      ),
                    ],
                  ),
                )

              // TAREFAS
              : pagina == 2

                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          Icon(
                            Icons.task,
                            size: 70,
                            color: Color(0xFF001D1D),
                          ),

                          SizedBox(height: 20),

                          Text(
                            'Minhas Tarefas',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1D1D1D),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Aqui ficam suas tarefas.',
                          ),
                        ],
                      ),
                    )

                  // PERFIL
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          Icon(
                            Icons.person,
                            size: 70,
                            color: Color(0xFF333333),
                          ),

                          SizedBox(height: 20),

                          Text(
                            'Meu Perfil',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1D1D1D),
                            ),
                          ),

                          SizedBox(height: 10),

                          Text(
                            'Usuário CyberMind',
                          ),
                        ],
                      ),
                    ),

      // MENU INFERIOR
      // Aparece nas telas de Trabalho, Tarefas e Perfil
      bottomNavigationBar: pagina > 0

          ? BottomNavigationBar(

              currentIndex: pagina - 1,

              onTap: (index) {

                setState(() {
                  pagina = index + 1;
                });

              },

              items: [

                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.work,
                    color: Color(0xFF1D1D00),
                  ),

                  label: 'Trabalho',
                ),

                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.task,
                    color: Color(0xFF001D1D),
                  ),

                  label: 'Tarefas',
                ),

                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xFF333333),
                  ),

                  label: 'Perfil',
                ),
              ],
            )

          : null,
    );
  }
}