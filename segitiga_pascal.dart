void main() {
  int n = 6; // Jumlah baris segitiga Pascal yang diinginkan
  pascalTriangle(n);
}

void pascalTriangle(int n) {
  List<List<int>> triangle = [];

  for (int line = 0; line < n; line++) {
    List<int> row = List<int>.filled(line + 1, 1);

    for (int i = 1; i < line; i++) {
      row[i] = triangle[line - 1][i - 1] + triangle[line - 1][i];
    }

    triangle.add(row);
  }

  printPascal(triangle, n);
}

void printPascal(List<List<int>> triangle, int n) {
  int maxLength = triangle.last.join('   ').length; // Panjang maksimum baris terakhir

  for (var row in triangle) {
    String rowString = row.join('   '); // Memberi jarak antar angka
    int spaces = (maxLength - rowString.length) ~/ 2; // Menyesuaikan spasi untuk sejajar
    print(' ' * spaces + rowString);
  }
}


