import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //
  final firestore = FirebaseFirestore.instance;
  kirimNama(String nama) async {
    await firestore.collection("tabelNama").add({"nama": nama});
  }
}
