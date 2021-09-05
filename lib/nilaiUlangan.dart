class NilaiUlangan {
  double _fisika;
  double _biologi;

  void set fisika(double nilai) {
    _fisika = nilai;
  }

  void set biologi(double nilai) {
    _biologi = nilai;
  }

  double get biologi {
    return _biologi;
  }

  double get fisika {
    return _fisika;
  }

  double jumlahNilai() {
    return this._biologi + this._fisika;
  }
}
