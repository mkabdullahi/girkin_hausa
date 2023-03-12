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
    Girkegirke('Tuwo miyan Kuka', 'assets/hotuna/image_1.jpg', 3, [
      KayanHadi(2, 'cokali', 'Garin Kuka'),
      KayanHadi(0.5, 'mudo', 'Garin Masara'),
      KayanHadi(0.5, 'mudu', 'Garin Shinkafa'),
      KayanHadi(1, 'kilo', 'Naman Kaza')
    ]),
    Girkegirke('Dan wake', 'assets/hotuna/image_2.jpg', 1, [
      KayanHadi(1.5, 'mudu', 'Garin alkama'),
      KayanHadi(1, 'gwangwami', 'Man gyada'),
      KayanHadi(1, 'cokali', 'Garin Kuka'),
      KayanHadi(1, 'dun kuli', 'Kanwa')
    ])
  ];
}

class KayanHadi {
  double gudaNawa;
  String aunawa;
  String sunanKayanHadi;

  KayanHadi(this.gudaNawa, this.aunawa, this.sunanKayanHadi);
}