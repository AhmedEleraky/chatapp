class UserModel {
  final String name;
  final String contactImage;
  final String lastMsg;
  final String time;

  UserModel(
      {required this.name,
      required this.contactImage,
      required this.lastMsg,
      required this.time});
}

List<UserModel> chat = [
  UserModel(
      name: 'Adel Shakl',
      contactImage: 'assets/adel_shakl.jpeg',
      lastMsg: 'ايه في ايه؟',
      time: '10.30'),
  UserModel(
      name: 'Ahmed Ezz',
      contactImage: 'assets/ezz.jpeg',
      lastMsg: 'Good Luck',
      time: '10.00'),
  UserModel(
      name: 'Karim AbdelAziz',
      contactImage: 'assets/karim_abdelaziz.jpeg',
      lastMsg: 'Good Luck',
      time: '11.00'),
  UserModel(
      name: 'Aly Maaloul',
      contactImage: 'assets/Maloul.jpg',
      lastMsg: 'Yalla Ya Ahly',
      time: '11.00'),
  UserModel(
      name: 'Kylian Mbappé',
      contactImage: 'assets/mbappe.jpeg',
      lastMsg: 'Hala Madrid',
      time: '11.00'),
  UserModel(
      name: 'CR7',
      contactImage: 'assets/ronaldo.jpg',
      lastMsg: 'Suiiiiiii',
      time: '11.00'),
  UserModel(
      name: 'Leo Messi',
      contactImage: 'assets/messi.jpeg',
      lastMsg: 'Hello!',
      time: '11.00'),
  UserModel(
      name: 'Ahmed El Sakka',
      contactImage: 'assets/sakka.jpeg',
      lastMsg: 'Hello!',
      time: '11.00'),
  UserModel(
      name: 'Mohamed Salah',
      contactImage: 'assets/salah.jpeg',
      lastMsg: 'Hello!',
      time: '11.00'),
];
