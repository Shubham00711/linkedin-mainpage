class User {
  final String photo;
  final String name;
  final String ocupation;
  final String location;
  final List<Activity> activity;
  final int conections;
  final int profile;
  const User({
    required this.photo,
    required this.name,
    required this.ocupation,
    required this.activity,
    required this.location,
    required this.conections,
    required this.profile,
  });
}

class Activity {
  final String name;
  final String title;
  final String description;
  final String image;
  final String date;

  const Activity({required this.name, required this.title, required this.description, required this.image, required this.date});
}

const user = User(
  name: 'Rohan Kurniawan',
  photo: 'assets/linkedin/images/users/user.png',
  location: 'Banten, Indonesia',
  conections: 990,
  profile: 550,
  ocupation: 'Founder at Doloris',
  activity: const [
    const Activity(
      name: 'About',
      description: 'Hello, I am Rohan kurniawan, a founder at Doloris based at Cilegon, Batnen.',
      date: '',
      title: '',
      image: '',
    ),
    const Activity(
      name: 'Activity',
      title: "Gokek's New Transport Desing",
      description: 'Anda mengomentari ini',
      date: '1 minutes ago',
      image: 'assets/linkedin/images/activity.png',
    ),
    const Activity(
      name: 'Experience',
      title: "Founder at Dolaris",
      description: '10 September, 2020',
      date: 'Cilegon Banten, Indonesia',
      image: 'assets/linkedin/images/experience.png',
    ),
    const Activity(
      name: 'Education',
      description: "Fakultas Teknik Untirta",
      title: 'Universitas Pelita Harapan',
      date: '2015-2020',
      image: 'assets/linkedin/images/education.png',
    ),
    const Activity(
      name: 'Activity',
      title: "Gokek's New Transport Desing",
      description: 'Anda mengomentari ini',
      date: '1 minutes ago',
      image: 'assets/linkedin/images/activity.png',
    ),
    const Activity(
      name: 'Experience',
      title: "Founder at Dolaris",
      description: '10 September, 2020',
      date: 'Cilegon Banten, Indonesia',
      image: 'assets/linkedin/images/experience.png',
    ),
  ],
);
