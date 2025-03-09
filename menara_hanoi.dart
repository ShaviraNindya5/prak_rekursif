void hanoi(int n, String fromRod, String toRod, String auxRod) {
  if (n == 1) {
    print('Pindahkan pasak 1 dari $fromRod ke $toRod');
    return;
  }
  hanoi(n - 1, fromRod, auxRod, toRod);
  print('Pindahkan pasak $n dari $fromRod ke $toRod');
  hanoi(n - 1, auxRod, toRod, fromRod);
}

void main() {
  int jumlahDisk = 3;
  print('Langkah-langkah penyelesaian Menara Hanoi untuk $jumlahDisk disk:');
  hanoi(jumlahDisk, 'A', 'C', 'B');
}
