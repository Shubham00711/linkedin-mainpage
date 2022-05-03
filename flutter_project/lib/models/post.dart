import 'package:flutter_project/models/user.dart';

class Post {
  final User user;
  final String title;
  final String timeAgo;
  final String description;
  final String photo;
  final int like;
  final int comment;
  final bool isLikeMe;

  const Post({
    required this.user,
    required this.title,
    required this.timeAgo,
    required this.description,
    required this.photo,
    required this.like,
    required this.comment,
    this.isLikeMe = false,
  });
}

const posts = <Post>[
  Post(
    user: User(
        name: 'Saurabh Agre',
        photo: 'assets/linkedin/images/users/diego.jpg',
        location: '',
        profile: 0,
        ocupation: '',
        conections: 0,
        activity: []),
    isLikeMe: true,
    like: 350,
    description: "Finally my 'Work From Home' @Android arrived 😺.",
    title: 'Work From Home.',
    timeAgo: '3 days ago',
    comment: 480,
    photo: 'assets/linkedin/images/posts/post_diego.jpg',
  ),
  Post(
    user: User(
        name: 'Ashish Shingade',
        photo: 'assets/linkedin/images/users/brangy.jpg',
        location: '',
        profile: 0,
        ocupation: '',
        conections: 0,
        activity: []),
    isLikeMe: true,
    like: 48,
    timeAgo: '10 days ago',
    comment: 600,
    title: 'Security Informatic.',
    photo: 'assets/linkedin/images/posts/brangy_post.jpg',
    description:
        'Computer security, also known as cybersecurity or information technology security, is the area related to computer science and telematics that focuses on the protection of',
  ),
  Post(
      user: User(
          name: 'Pranav Padawe',
          photo: 'assets/linkedin/images/users/javier.jpg',
          location: '',
          profile: 0,
          ocupation: '',
          conections: 0,
          activity: []),
      like: 85,
      photo: 'assets/linkedin/images/posts/javier_post.jpg',
      comment: 200,
      timeAgo: '22 days ago',
      title: 'Learning NodeJS,',
      description:
          'Node.js is an open source, cross-platform runtime environment for the server layer based on the JavaScript programming language, asynchronous, with data I/O in an event-driven architecture and based on the V8 engine of Google'),
  Post(
      user: User(
          name: 'Atharv Parab',
          photo: 'assets/linkedin/images/users/mao.jpg',
          location: '',
          profile: 0,
          ocupation: '',
          conections: 0,
          activity: []),
      like: 130,
      photo: 'assets/linkedin/images/posts/mao_post.jpg',
      comment: 350,
      timeAgo: '3 week ago',
      title: 'Creating logo',
      description:
          'Simply enter some details about your business and select your design preferences, and the logo generator will create the perfect logo for your brand.'),
];
