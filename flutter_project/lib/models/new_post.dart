class NewPost {
  final String path;
  final String name;

  const NewPost({required this.path, required this.name});
}

const newPostItems = <NewPost>[
  NewPost(name: 'Image', path: 'assets/linkedin/icons/image.svg'),
  NewPost(name: 'video', path: 'assets/linkedin/icons/film.svg'),
  NewPost(name: 'File', path: 'assets/linkedin/icons/file.svg'),
  NewPost(name: 'Article', path: 'assets/linkedin/icons/article.svg'),
];
