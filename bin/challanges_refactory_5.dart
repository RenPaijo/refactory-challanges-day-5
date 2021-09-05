import 'dart:io';
import 'package:challanges_refactory_5/nilaiUlangan.dart';

void main(List<String> arguments) {
  //  class dan encapsulation
  NilaiUlangan rini;

  rini = NilaiUlangan();
  rini.fisika = double.tryParse(stdin.readLineSync());
  rini.biologi = double.tryParse(stdin.readLineSync());

  print(rini.biologi + rini.fisika);
  print("---------------------------------------------");

  // inheritances dan abstract
  AyahIbu aku = new AyahIbu();

  aku.ibu();
  aku.ayah();
  print("Aku Sayang Semuanya :)");
  print("---------------------------------------------");

  // polymorphism
  lampuHijau shogun = lampuHijau();
  shogun.mlayu();
  print("---------------------------------------------");

  // recursive
  var angka = 8;
  var fact = faktorisasi(angka);
  print("Faktorisasi dari angka 8 adalah: ${fact}");
  print("---------------------------------------------");
  
  // array
  array();
}

abstract class keluarga {
  void ibu();
  void ayah();
}

class AyahIbu extends keluarga {
  @override
  void ibu() {
    print("Satu satu aku sayang ibu");
  }

  @override
  void ayah() {
    print("dua dua juga sayang ayah");
  }
}

class lampuMerah {
  void mlayu() {
    print("harus berhenti");
  }
}

class lampuHijau extends lampuMerah {
  @override
  void mlayu() {
    print("Langsung GAS bozzz!!!");
    super.mlayu();
  }
}

int faktorisasi(int angka) {
  if (angka <= 1) {
    return 1;
  } else {
    return angka * faktorisasi(angka - 1);
  }
}

void array() {
  var list = ['a', 's', 'e', 'z', 'x'];
  print(list.first);
  print(list.isEmpty);
  print(list.length);
}
