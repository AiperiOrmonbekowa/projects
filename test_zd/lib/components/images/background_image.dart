import 'package:flutter/widgets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 700,
          child: Image.asset(
            'assets/images/rectangle.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 300,
          left: 90,
          child: Image.asset('assets/images/group.png'),
        ),
        Positioned(
          top: 640,
          left: 15,
          child: Row(
            children: [
              Image.asset(
                'assets/images/ellipse.png',
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                children: [
                  Text(
                    'Pawel Czerwinski',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('@pawel_czerwinski'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
