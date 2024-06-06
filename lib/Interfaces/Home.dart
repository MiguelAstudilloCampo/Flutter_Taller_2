import 'package:flutter/material.dart';
import 'package:taller2/Interfaces/ModalMenu.dart';
import 'package:taller2/Interfaces/paginasPrimerPunto.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Hospital"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: opcionesMenu.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: IconButton(
              onPressed: () {
                if (opcionesMenu[index]['codigo'] == '001') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CitasMedicasPage()),
                  );
                }
              },
              icon: Column(
                children: [
                  Icon(opcionesMenu[index]["icono"], color: Colors.orange),
                  Text(opcionesMenu[index]["titulo"]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


List opcionesMenu = [
  {
    'codigo': '001',
    'titulo': 'Citas Medicas',
    'icono': Icons.local_hospital_rounded,
  },
  {
    'codigo': '002',
    'titulo': 'Urgencias',
    'icono': Icons.local_hospital_rounded,
  },
  {
    'codigo': '003',
    'titulo': 'Especialistas',
    'icono': Icons.contact_mail_rounded,
  },
  {
    'codigo': '004',
    'titulo': 'Farmacia',
    'icono': Icons.local_pharmacy,
  },
  {
    'codigo': '005',
    'titulo': 'Pacientes',
    'icono': Icons.person_2,
  },
  {
    'codigo': '006',
    'titulo': 'Terapias',
    'icono': Icons.man_4,
  },
  {
    'codigo': '007',
    'titulo': 'Laboratorios',
    'icono': Icons.medication_liquid_rounded,
  },
  {
    'codigo': '008',
    'titulo': 'Sangre',
    'icono': Icons.bloodtype,
  },
  {
    'codigo': '009',
    'titulo': 'Rehabilitacion',
    'icono': Icons.blind,
  },
  {
    'codigo': '010',
    'titulo': 'Consultas',
    'icono': Icons.missed_video_call_outlined,
  },
  {
    'codigo': '011',
    'titulo': 'Informes',
    'icono': Icons.medical_information_sharp,
  },
  {
    'codigo': '012',
    'titulo': 'Calendario',
    'icono': Icons.calendar_month,
  },
  {
    'codigo': '013',
    'titulo': 'Pagos',
    'icono': Icons.credit_card,
  },
  {
    'codigo': '014',
    'titulo': 'Contactos',
    'icono': Icons.contact_emergency,
  },
  {
    'codigo': '015',
    'titulo': 'Informacion',
    'icono': Icons.info,
  },
];
