import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Counter Bloc'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerWidget(
                icons: const Icon(Icons.add),
                onTap: () => context.read<CounterCubit>().increment(),
              ),
              ContainerWidget(
                icons: const Icon(Icons.remove),
                onTap: () => context.read<CounterCubit>().decrement(),
              ),
            ],
          ),
          BlocBuilder<CounterCubit, int>(builder: (context, state) {
            return Text(
              '$state',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerWidget(
                icons: const Icon(Icons.close),
                onTap: () => context.read<CounterCubit>().increase(),
              ),
              ContainerWidget(
                icons: const Icon(Icons.expand_less),
                onTap: () => context.read<CounterCubit>().divide(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.icons, required this.onTap});
  final Icon icons;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 165, 151, 189),
          ),
          child: icons,
        ),
      ),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  increment() => emit(state + 1);
  decrement() => emit(state - 1);
  increase() => emit(state * 1);
  divide() => emit(state ~/ 1);
}
