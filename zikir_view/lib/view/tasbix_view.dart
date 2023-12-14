import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zikir_view/widgets/example_animation.dart';

class TasbixView extends StatelessWidget {
  const TasbixView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TasbixView'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 30),
                          child: SvgPicture.asset('assets/icons/Тизме.svg'),
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                        height: 10,
                      ),
                      const Text(
                        '\n\nلا اله الا أنت سبحانك اني كنت من الظالمين \n\n Ля иляха илля Анта! Субханака, \n\t\t\t инни кунту мина-з-залимин! ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 30),
                        child: SvgPicture.asset('assets/icons/Кубок.svg'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\t\tНет Бога достойного поклонения,\nкроме Тебя, Пречист Ты, поистине, \nя был одним из несправедливых.',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                  Container(
                    height: 350,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/Group.png'),
                      ),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/Бусинка.svg'),
                        SvgPicture.asset('assets/icons/Бусинка.svg'),
                        SvgPicture.asset('assets/icons/Бусинка.svg'),
                        SvgPicture.asset('assets/icons/Бусинка.svg'),
                        const SizedBox(
                          height: 75,
                        ),
                        SvgPicture.asset('assets/icons/Бусинка.svg'),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 0, bottom: 80),
              child: ExampleAnimation(),
            ),
          ),
        ],
      ),
    );
  }
}

