import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var cNama = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          TextFormField(
              controller: cNama, decoration: InputDecoration(hintText: "Nama")),
          ElevatedButton(
              onPressed: () {
                controller.kirimNama(cNama.text);
              },
              child: Text("Tombol")),
        ],
      ),
    );
  }
}
