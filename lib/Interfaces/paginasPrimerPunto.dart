import 'package:flutter/material.dart';
import 'package:taller2/Interfaces/ModalMenu.dart';

class CitasMedicasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Hospital"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: opcionesMedicas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              llamadoModalMenu(
                  context,
                  opcionesMedicas[index]["titulo"],
                  opcionesMedicas[index]["icono"],
                  opcionesMedicas[index]["codigo"]);
            },
            leading:
                Icon(opcionesMedicas[index]["icono"], color: Colors.orange),
            title: Text(opcionesMedicas[index]["titulo"]),
          );
        },
      ),
    );
  }
}

List opcionesMedicas = [
  {
    'codigo': '001',
    'titulo': 'Medicina General',
    'icono': Icons.healing_rounded,
  },
  {
    'codigo': '002',
    'titulo': 'Odontologia',
    'icono': Icons.troubleshoot_sharp,
  },
  {
    'codigo': '003',
    'titulo': 'Psicologia',
    'icono': Icons.psychology_rounded,
  },
  {
    'codigo': '004',
    'titulo': 'Cardiologia',
    'icono': Icons.favorite_rounded,
  },
  {
    'codigo': '005',
    'titulo': 'Neurologia',
    'icono': Icons.volunteer_activism_outlined,
  },
  {
    'codigo': '006',
    'titulo': 'Ginecologia',
    'icono': Icons.woman_rounded,
  },
  {
    'codigo': '007',
    'titulo': 'Dermatologia',
    'icono': Icons.face_rounded,
  },
  {
    'codigo': '008',
    'titulo': 'Pediatria',
    'icono': Icons.child_care_rounded,
  },
  {
    'codigo': '009',
    'titulo': 'Oftamologia',
    'icono': Icons.visibility_rounded,
  },
  {
    'codigo': '010',
    'titulo': 'Ortopedia',
    'icono': Icons.accessibility_rounded,
  }
];
