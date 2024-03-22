import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass_kit/glass_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(items: []),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: GlassContainer(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white.withOpacity(0.1),
              isFrostedGlass: true,
              frostedOpacity: 0.04,
              blur: 8,
              borderColor: Colors.white.withOpacity(0.05),
            ),
          ),
          ListView(
            children: const <Widget>[
              Part1(),
              Part2(),
              Part3(),
            ],
          ),
          const Align(alignment: Alignment.bottomCenter, child: AppNavbar()),
        ],
      ),
    );
  }
}

//part 1
class Part1 extends StatelessWidget {
  const Part1({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: 214,
      width: MediaQuery.of(context).size.width,
      color: Colors.white.withOpacity(0.1),
      borderColor: Colors.white.withOpacity(0),
      blur: 16,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(20, 30, 20, 10),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(height: 30, child: Image.asset('images/7.png')),
                const SizedBox(width: 10),
                const Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '20/12/2022',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inter',
                        ),
                      ),
                      Text(
                        'Joshua Scanlan',
                        style: TextStyle(
                          height: 1,
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    SvgPicture.asset('assets/6.svg')
                  ],
                ),
                const SizedBox(width: 10),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('images/8.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xff71AB7A),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            height: 55,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                width: 1,
                color: const Color(0xffe7e7e7),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Color(0xffbbbbbc),
                    size: 22,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Search favorite Beverages',
                      style: TextStyle(
                        height: 1,
                        color: Color(0xffbbbbbc),
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  Icon(
                    CupertinoIcons.slider_horizontal_3,
                    color: Color(0xffbbbbbc),
                    size: 22,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//part 2
class Part2 extends StatelessWidget {
  const Part2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff313131).withOpacity(0.2),
      height: 355,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Most Popular Beverages',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 266,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              addRepaintBoundaries: false,
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                SizedBox(width: 20),
                Part2ListBlock(),
                Part2ListBlock(),
                Part2ListBlock(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Part2ListBlock extends StatelessWidget {
  const Part2ListBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      margin: const EdgeInsets.only(right: 20),
      borderRadius: BorderRadius.circular(10),
      height: 266,
      width: 213,
      color: Colors.white.withOpacity(0.1),
      isFrostedGlass: true,
      frostedOpacity: 0.04,
      blur: 16,
      borderWidth: 1.5,
      borderColor: Colors.white.withOpacity(0.05),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 29, left: 10),
            child: Image.asset(
              'images/3.png',
              width: 128,
            ),
          ),
          const SizedBox(height: 27),
          SizedBox(
            height: 62,
            width: 170,
            child: Stack(
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hot Cappuccino',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Espresso, Steamed Milk',
                      style: TextStyle(
                        color: Color(0xff303030),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '4.9',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          CupertinoIcons.star_fill,
                          color: Color(0xffFFC003),
                          size: 12,
                        ),
                        SizedBox(width: 5),
                        Text(
                          '(458)',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color(0xff66a35c),
                    ),
                    child: const Icon(
                      CupertinoIcons.plus,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

//part 3
class Part3 extends StatelessWidget {
  const Part3({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: 500,
      width: MediaQuery.of(context).size.width,
      color: Colors.white.withOpacity(0.1),
      borderColor: Colors.white.withOpacity(0),
      blur: 16,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Get it instantly',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Part3ListBlock(),
          Part3ListBlock(),
        ],
      ),
    );
  }
}

class Part3ListBlock extends StatelessWidget {
  const Part3ListBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
      height: 163,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurStyle: BlurStyle.outer,
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Part3ListBlock left part
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lattè',
                  style: TextStyle(
                    color: Color(0xffcdcdcd),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      '4.9',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      CupertinoIcons.star_fill,
                      color: Color(0xffFFC003),
                      size: 12,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      '(458)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'images/6.png',
                      width: 15,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const ClipRect(
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //Part3ListBlock right part
          SizedBox(
            width: 110,
            height: 125,
            child: Stack(
              children: [
                Container(
                  height: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: const DecorationImage(
                      image: AssetImage('images/5.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xff66a35c),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'ADD',
                      style: TextStyle(
                        height: 1,
                        color: Colors.white,
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//Navigation Bar
class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      borderRadius: BorderRadius.circular(15),
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 28),
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xff333333).withOpacity(0.83),
      blur: 8,
      borderColor: Colors.white.withOpacity(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: const Color(0xff2d2d2d),
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: const Color(0xff5e5e5e),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.25),
                      spreadRadius: -2,
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    )
                  ],
                ),
              ),
              SvgPicture.asset('assets/1.svg'),
            ],
          ),
          SvgPicture.asset('assets/2.svg'),
          SvgPicture.asset('assets/3.svg'),
          SvgPicture.asset('assets/4.svg'),
          SvgPicture.asset('assets/5.svg'),
        ],
      ),
    );
  }
}
