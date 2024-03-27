import 'dart:io';

void main(List<String> args) {
//Soal No. 1 (Looping While) ------------------------------

  var i = 2;
  var n = 20;
  var j = 2;

  print("LOOPING PERTAMA");
  while (i <= n) {
    print("$i - I love coding");
    i += 2;
  }

  print("LOOPING KEDUA");
  while (n >= j) {
    print("$n - I will become a mobile developer");
    n -= 2;
  }

//Soal No.2 (Looping For) ------------------------------

  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 == 1) {
      print("$i - I Love Coding");
    } else if (i % 2 == 0) {
      print("$i - Berkualitas");
    } else {
      print("$i - Santai");
    }
  }

//Soal No. 3 (persegi panjang) ------------------------------

  var row = 4;
  var col = 8;
  for (int i = 0; i < row; i++) {
    for (int j = 0; j < col; j++) {
      stdout.write("#");
    }
    stdout.write("\n");
  }


//Soal No.4 (tangga) ------------------------------

  for (int i = 0; i < 7; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("#");
    }
    stdout.write("\n");
  }
}
