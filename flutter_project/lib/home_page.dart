import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/utils/linkedin_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bloc/home_bloc.dart';
import 'pages/home/widgets/header.dart';
import 'pages/home/widgets/list_post.dart';
import 'pages/home/widgets/nav_bar.dart';
import 'pages/home/widgets/new_post.dart';

const primaryColor = Color(0xFF0A66C2);

class Homepage extends StatelessWidget {
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
        home: Home_Page(),
      ),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

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
    return Builder(
      builder: (context) {
        return Positioned.fill(
          child: CustomScrollView(
            controller: provider.controller,
            slivers: const [Header(), NewPost(), ListPost()],
          ),
        );
      }
    );
  }
}
