void main(List<String> args) {
//Soal No. 1 ------------------------------
  String teriak() {
    return "Halo Sanbers!";
  }

  print(teriak());

//Soal No. 2 ------------------------------

  int kalikan(int num1, int num2) {
    return num1 * num2;
  }

  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

//Soal No. 3 ------------------------------

  String introduce(String name, int age, String address, String hobby) {
    return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
  }

  final String name = "Achmad";
  final int age = 30;
  final String address = "Jln. Malioboro, Yogyakarta";
  final String hobby = "Gaming";

  final perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

//Soal No. 4 ------------------------------

  int faktorial(int n) {
    if (n <= 0) {
      return 1;
    } else {
      return n * faktorial(n - 1);
    }
  }

  print(faktorial(6));
}
