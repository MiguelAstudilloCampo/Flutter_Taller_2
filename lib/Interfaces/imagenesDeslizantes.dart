import 'package:flutter/material.dart';

class imagenesDeslizantes extends StatefulWidget {
  const imagenesDeslizantes({Key? key}) : super(key: key);

  @override
  State<imagenesDeslizantes> createState() => _imagenesDeslizantesState();
}

class _imagenesDeslizantesState extends State<imagenesDeslizantes> {
  final List<String> imageUrls = [
    'https://cdn.iconscout.com/icon/free/png-256/free-nintendo-2296041-1912000.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKE0emRrbDb7yTAKTynJVT1orr_f-mlPo5Hg&s',
    'https://i0.wp.com/statefoxgames.com/wp-content/uploads/2022/05/xbox-55-899039.png?fit=256%252C256&ssl=1',
  ];

  final List<String> titles = [
    'Nintendo',
    'PlayStation',
    'Xbox',
  ];

  final List<String> subtitles = [
    'Consola para toda la Familia',
    'Consola para disfrutar exclusivos de Sony de ultima generacion',
    'Consola potente para jugar juegos de ultima generacion en resoluciones 4K',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagenes Deslizantes"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: PageView.builder(
          itemCount: imageUrls.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  imageUrls[index],
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                SizedBox(height: 10),
                Text(
                  titles[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  subtitles[index],
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: imagenesDeslizantes(),
  ));
}
