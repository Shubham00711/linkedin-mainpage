import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkedin_mainpage/pages/home/widgets/list_post.dart';
import 'package:linkedin_mainpage/pages/home/widgets/nav_bar.dart';
import 'package:linkedin_mainpage/pages/home/widgets/header.dart';
import 'package:linkedin_mainpage/pages/home/widgets/new_post.dart';
import 'package:linkedin_mainpage/utils/linkedin_colors.dart';
import 'package:provider/provider.dart';
import 'package:linkedin_mainpage/bloc/home_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return ChangeNotifierProvider(
      create: (_) => HomeBLoC(),
      child: MaterialApp(
        title: 'LinkedIn',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light()
            .copyWith(textTheme: GoogleFonts.montserratTextTheme(), scaffoldBackgroundColor: LinkedInColors.background),
        home: HomePage(),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [const _Body(), const NavBar()]),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeBLoC>(context, listen: false);
    return Positioned.fill(
      child: CustomScrollView(
        controller: provider.controller,
        slivers: [const Header(), const NewPost(), const ListPost()],
      ),
    );
  }
}
