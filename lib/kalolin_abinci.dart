class Girkegirke {
  String sunanAbinci;
  String hotonAbinciUrl;
  int yawanAbinci;
  List<KayanHadi> kayanHadi;

  Girkegirke(
    this.sunanAbinci,
    this.hotonAbinciUrl,
    this.yawanAbinci,
    this.kayanHadi,
  );
  static List<Girkegirke> samfuri = [
    Girkegirke(
        'Tuwo miyan Kuka', 'assets/hotuna/tuwon_masara_da_miyan_kuka.jpg', 3, [
      KayanHadi(2, 'Cokali', 'Garin Kuka'),
      KayanHadi(0.5, 'Mudu', 'Garin Masara'),
      KayanHadi(0.5, 'Mudu', 'Shinkafan tuwo'),
      KayanHadi(1, 'Kilo', 'Naman Kaza')
    ]),
    Girkegirke('Dan wake', 'assets/hotuna/dan_wake_da_kabegi.jpg', 1, [
      KayanHadi(1.5, 'Mudu', 'Garin alkama'),
      KayanHadi(1, 'Gwangwami', 'Man gyada'),
      KayanHadi(1, 'Cokali', 'Garin Kuka'),
      KayanHadi(1, 'Dun kuli', 'Kanwa')
    ]),
    Girkegirke('Kwalan Na tabi', 'assets/hotuna/kwalan_nata_bi.jpg', 2, [
      KayanHadi(0.5, 'Kilo', 'Garin flour'),
      KayanHadi(0.5, 'Liter', 'Ruwa'),
      KayanHadi(2, 'Guda', 'Koyin kaza')
    ]),
    Girkegirke(
        'Tuwo miyan Kubaiwa Bushashe', 'assets/hotuna/tuwon_masara_da_miyan_kubaiwa_dry.jpg', 3, [
      KayanHadi(2, 'Cokali', 'Garin Kubaiwa'),
      KayanHadi(0.5, 'Kilo', 'Garin Masara'),
      KayanHadi(0.2, 'Kilo', 'Shinkafan Tuwo'),
      KayanHadi(1, 'Kilo', 'Naman Kaza')
    ]),
    Girkegirke('Tuwon miyan Kubaiwa Danye', 'assets/hotuna/tuwon_shinkafa_da_miyan_kubaiwa.jpg', 1, [
      KayanHadi(2, 'Cokali', 'Danyen Kubaiwa'),
      KayanHadi(0.5, 'Kilo', 'Garin Masara'),
      KayanHadi(0.2, 'Kilo', 'Shinkafan Tuwo'),
      KayanHadi(1, 'Kilo', 'Nama')
    ]),
    Girkegirke('Gwaten Doya da wake', 'assets/hotuna/gwaten_doya_da_wake.jpg', 2, [
      KayanHadi(1, 'Guda', 'Doya'),
      KayanHadi(0.3, 'Kilo', 'Wake'),
      KayanHadi(2, 'Kuli', 'Gayen Aleyaho')
    ]),
    Girkegirke(
        'Gwaten Masara da Wake', 'assets/hotuna/gwaten_masara_da_wake.jpg', 3, [
      KayanHadi(0.5, 'Kilo', 'Barjajgen Masara'),
      KayanHadi(0.2, 'Kilo', 'Wake'),
      KayanHadi(2, 'Kuli', 'Gayen Aleyaho'),
      KayanHadi(1, 'gudan', 'Albasa')
    ]),
    Girkegirke('Gwanten Shinkafa da Wake', 'assets/hotuna/gwaten_shinkafa_dawake.jpg', 1, [
      KayanHadi(0.5, 'Kilo', 'Shinkafan Tuwo'),
      KayanHadi(0.2, 'Kilo', 'Wake'),
      KayanHadi(2, 'Kuli', 'Gayen Aleyaho'),
      KayanHadi(1, 'gudan', 'Albasa')
    ]),
    Girkegirke('Sakora(Tuwon Doya)', 'assets/hotuna/sekora_stew_soup.jpg', 2, [
      KayanHadi(1, 'Kilo', 'Danyen Doya'),
      KayanHadi(0.5, 'Kilo', 'Tumaturi'),
      KayanHadi(0.3, 'Kilo', 'Naman kaza')
    ]),
    Girkegirke('Dindi Kolo', 'assets/hotuna/dindi_kolo.jpg', 3, [
      KayanHadi(1, 'Kilo', 'Danyen Dankali'),
      KayanHadi(0.5, 'Kilo', 'Man Gayada'),
      KayanHadi(3, 'Cokali', 'Yajin Barkono')
    ])
  ];
}

class KayanHadi {
  double gudaNawa;
  String aunawa;
  String sunanKayanHadi;

  KayanHadi(this.gudaNawa, this.aunawa, this.sunanKayanHadi);
}