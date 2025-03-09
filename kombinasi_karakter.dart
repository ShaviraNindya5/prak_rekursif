void main() {
  int jumlahKarakter = 3;
  List<String> karakter = ['a', 'b', 'c'];
  List<String> hasil = [];

  void kombinasiRekursif(int n, String kombinasiSaatIni) {
    if (n == 0) {
      hasil.add(kombinasiSaatIni);
      return;
    }

    for (String char in karakter) {
      kombinasiRekursif(n - 1, kombinasiSaatIni + char);
    }
  }

  kombinasiRekursif(jumlahKarakter, "");

  // Cetak hasil dalam dua baris
  int tengah = hasil.length ~/ 2;
  print(hasil.sublist(0, tengah).join(" "));
  print(hasil.sublist(tengah).join(" ") + "\n\nBUILD SUCCESSFUL\n(total time: 1 second)");
}