import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CepiConnect"), // Adicione um título à sua AppBar
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
            }, 
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      // Adicione um Drawer à sua página
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Pedro Lucas"),
              accountEmail: Text("pedroldlima52@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("caminho_para_sua_imagem"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Página Inicial"),
              onTap: () {
                // Implemente a ação que deseja quando o item é selecionado
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Conta'),
              onTap: () {

              },
            )
            // Adicione mais itens do Drawer conforme necessário
          ],
        ),
      ),
      body: Center(
        child: Text("Conteúdo da Página Principal"),
      ),
    );
  }
}
