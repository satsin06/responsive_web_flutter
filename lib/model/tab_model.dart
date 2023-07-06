class MyModel {
  final String title;
  final String text1;
  final String image1;
  final String text2;
  final String image2;
  final String text3;
  final String image3;

  MyModel({
    required this.title,
    required this.text1,
    required this.image1,
    required this.text2,
    required this.image2,
    required this.text3,
    required this.image3,
  });
}

List<MyModel> dummyData = [
  MyModel(
    title: 'Drei einfache Schritte\n zu deinem neuen Job',
    text1: 'Erstellen dein Lebenslauf',
    image1: 'image11.svg',
    text2: 'Erstellen dein Lebenslauf',
    image2: 'image12.svg',
    text3: 'Mit nur einem Klick bewerben',
    image3: 'image13.svg',
  ),
  MyModel(
    title: 'Drei einfache Schritte\n zu deinem neuen Mitarbeiter',
    text1: 'Erstellen dein Unternehmensprofil',
    image1: 'image11.svg',
    text2: 'Erstellen ein Jobinserat',
    image2: 'image22.svg',
    text3: 'Wähle deinen neuen Mitarbeiter aus',
    image3: 'image23.svg',
  ),
  MyModel(
    title: 'Drei einfache Schritte zur\n Vermittlung neuer Mitarbeiter',
    text1: 'Erstellen dein Unternehmensprofil',
    image1: 'image11.svg',
    text2: 'Erhalte Vermittlungs- angebot von Arbeitgeber',
    image2: 'image32.svg',
    text3: 'Vermittlung nach Provision oder Stundenlohn',
    image3: 'image33.svg',
  ),
];
