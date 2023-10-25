import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ZikirView extends StatefulWidget {
  const ZikirView({Key? key}) : super(key: key);

  @override
  State<ZikirView> createState() => _ZikirViewState();
}

class _ZikirViewState extends State<ZikirView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZikirView'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                InkWell(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/Тизме.svg')),
                const SizedBox(
                  width: 240,
                ),
                SvgPicture.asset('assets/icons/Кубок.svg'),
              ],
            ),
          ),
        const  Column(
            children:  [
              Text(
                'لَا إِلَٰهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ',
                style: TextStyle(fontSize: 17),
              ),
              ListTile(
                title: Text(
                  "Ля иляха илля Анта! Субханака, инни кунту мина-з-залимин!",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  'Нет Бога достайного поклонения,кроме Тебя, Пречить Ты, поистине, я был одним из несправедливых',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
