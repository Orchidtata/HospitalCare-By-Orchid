class Apotek {
  // Attributes
  late int _id;
  late String _nama_obat;
  late String _jenis_obat;
  late String _jumlah_obat;

  // Constructor
  Apotek(this._id, this._nama_obat, this._jenis_obat, this._jumlah_obat);

  // Named Constructor fromMap
  Apotek.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama_obat = map['nama_obat'].toString();
    this._jenis_obat = map['jenis_obat'].toString();
    this._jumlah_obat = map['jumlah_obat'].toString();
  }

  // Getter methods
  int get id => _id;
  String get nama_obat => _nama_obat;
  String get jenis_obat => _jenis_obat;
  String get jumlah_obat => _jumlah_obat;

  // Setter methods
  set nama_obat(String value) {
    _nama_obat = value;
  }

  set jenis_obat(String value) {
    _jenis_obat = value;
  }

  set jumlah_obat(String value) {
    _jumlah_obat = value;
  }

  // Convert object attributes to Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama_obat'] = nama_obat;
    map['jenis_obat'] = jenis_obat;
    map['jumlah_obat'] = jumlah_obat;
    return map;
  }
}
