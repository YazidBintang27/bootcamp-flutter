class Lingkaran {
  double? _luas;

  void setLuas(double value) {
    if (value < 0) {
      value *= -1;
    }
    _luas = value;
  }

  double? getLuas() => _luas;
}
