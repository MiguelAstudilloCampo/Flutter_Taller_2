import 'package:flutter/material.dart';
import 'package:taller2/Interfaces/FuenteDatos.dart';
import 'package:taller2/Interfaces/Home.dart';

ModalMenu(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: Text('Modal Menu'),
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: opcionesMenu.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: IconButton(
                onPressed: () {
                  llamadoModalMenu(
                      context,
                      opcionesMenu[index]["titulo"],
                      opcionesMenu[index]["icono"],
                      opcionesMenu[index]["codigo"]);
                },
                icon: Column(
                  children: [
                    Icon(opcionesMenu[index]["icono"]),
                    Text(opcionesMenu[index]["titulo"]),
                  ],
                ),
              ));
            },
          ),
        );
      });
}


llamadoModalMenu(BuildContext context, String tituloAppBar, menuIcono, codigo) {
  showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              foregroundColor: Colors.white,
              title: Text(tituloAppBar),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(menuIcono),
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.file_copy),
              backgroundColor: Colors.indigo,
              foregroundColor: Colors.white,
            ),
            body: codigo == "001"
                ? llamadoCitas()
                : codigo == "002"
                    ? llamadoUrgencias()
                    : codigo == "005"
                        ? llamadoPacientes()
                            : Text("no tiene datos"));
      });
}


llamadoCitas() {
  return ListView.builder(
    itemCount: citasMedicas.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(citasMedicas[index]["cita"]),
        subtitle: Text(citasMedicas[index]["valor"]),
        onTap: () {},
      );
    },
  );
}

///
llamadoUrgencias() {
  return ListView.builder(
    itemCount: Urgencias.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          title: Text(Urgencias[index]["sala"]),
          subtitle: Text(Urgencias[index]["lugar"]),
        ),
      );
    },
  );
}

///
llamadoPacientes() {
  return ListView.builder(
    itemCount: Pacientes.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: ListTile(
          title: Text(Pacientes[index]["nombre"]),
          subtitle: Text(Pacientes[index]["descripcion"]),
        ),
      );
    },
  );
}
