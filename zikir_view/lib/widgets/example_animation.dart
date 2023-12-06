class ExampleAnimation extends StatefulWidget {
  const ExampleAnimation({super.key});

  @override
  State<ExampleAnimation> createState() => _ExampleAnimationState();
}

class _ExampleAnimationState extends State<ExampleAnimation> {
  bool isOpen = false;
  double size = 0.0;

  void _updateState() {
    setState(() {
      size = isOpen ? 0.0 : 200;
      isOpen = !isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedSize(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 300),
            child: SizedBox(
              height: size,
              child: Column(
                children: [
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 0),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/tesme.svg',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 0),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/color.svg',
                      height: 70,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    padding: const EdgeInsets.only(bottom: 0),
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/zvuk.svg'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 60,
            child: IconButton(
              padding: const EdgeInsets.only(bottom: 7),
              onPressed: _updateState,
              icon: SvgPicture.asset('assets/icons/${isOpen ? 2 : 1}.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
