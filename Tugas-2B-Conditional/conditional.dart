import 'dart:io';

void main(List<String> args) {
//Soal No.1 Ternary Operator --------------------------------------------

  print("Apakah anda ingin menginstall? (y/t): ");
  String jawaban = stdin.readLineSync()!;

  (jawaban == "y")
      ? print("anda akan menginstall aplikasi dart")
      : print("aborted");


// Soal No.2 If-else if dan else --------------------------------------------

  var nama;
  var peran;

  print("Masukkan nama: ");
  nama = stdin.readLineSync()!;
  print("Masukkan peran: ");
  peran = stdin.readLineSync()!;

  if (nama == "" && peran == "") {
    print("Nama harus diisi!");
  } else if (peran == "") {
    print("Halo $nama");
    print("Pilih peranmu untuk memulai game!");
  } else {
    if (peran.toLowerCase() == "penyihir") {
      print(
          "Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (peran.toLowerCase() == "guard") {
      print(
          "Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    } else if (peran.toLowerCase() == "warewolf") {
      print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
    }
  }
  

//Soal No.3 Switch Case --------------------------------------------

  print("Masukkan hari: ");
  String hari = stdin.readLineSync()!;
  switch (hari) {
    case "senin":
      {
        print(
            "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja");
      }
    case "selasa":
      {
        print(
            "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      }
    case "rabu":
      {
        print(
            "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
      }
    case "kamis":
      {
        print(
            "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
      }
    case "jumat":
      {
        print("Hidup tak selamanya tentang pacar.");
      }
    case "sabtu":
      {
        print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
      }
    case "minggu":
      {
        print(
            "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
      }
    default:
      {
        print("Hari tidak valid");
      }
  }

//Soal No.4 --------------------------------------------

  var tanggal = 21;
  var bulan = 1;
  var tahun = 1945;

  String namaBulan;

  switch (bulan) {
    case 1:
      {
        namaBulan = "Januari";
      }
    case 2:
      {
        namaBulan = "Februari";
      }
    case 3:
      {
        namaBulan = "Maret";
      }
    case 4:
      {
        namaBulan = "April";
      }
    case 5:
      {
        namaBulan = "Mei";
      }
    case 6:
      {
        namaBulan = "Juni";
      }
    case 7:
      {
        namaBulan = "Juli";
      }
    case 8:
      {
        namaBulan = "Agustus";
      }
    case 9:
      {
        namaBulan = "September";
      }
    case 10:
      {
        namaBulan = "Oktober";
      }
    case 11:
      {
        namaBulan = "November";
      }
    case 12:
      {
        namaBulan = "Desember";
      }
    default:
      {
        namaBulan = "Bulan tidak valid";
      }
  }

  print('$tanggal $namaBulan $tahun');
}
