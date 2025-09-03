import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:konyanyur/screen/login/login.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:intl/date_symbol_data_local.dart';
//import 'package:hive/hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //inisilisais hive
  // await Hive.initFlutter();

  // //membuka sebuah box(open) untuk penyimpanan
  // await Hive.openBox('tugasanda');
  // await Hive.openBox('tugas');
  // await Hive.openBox('konfigurasiBox');
  // await Hive.openBox('tambahTruck');
  // await Hive.openBox('tambahpickuppoint');
  // await Hive.openBox('tambahcheckout');
  // await Hive.openBox('tambahpickup');
  // await Hive.openBox('tambahcheckin');
  // await initializeDateFormatting('id_Id', null);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Platrack',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LoginScreen(),
      // home: const MyHomePage(),
    );
  }
}

  /*Future<void> readSC() async {
  var box = await Hive.openBox('konfigurasiBox');
  //write to the box(menyimpan nilai)
  await box.put('namaTruck', 'Truck 1');
  await box.put('platNomor', 'ABCDEFGJ');

  //read the box(membaca nilai)
  String namaTruck = box.get('namaTruck');
  String platNomor = box.get('platNomor');

  print('Nama Truck: $namaTruck');
  print('Plat Nomor: $platNomor');
}*/

