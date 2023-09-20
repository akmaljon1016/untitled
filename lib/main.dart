import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/numberCubit/number_cubit.dart';
import 'package:untitled/textCubit/text_cubit.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (context) => NumberCubit(),
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<NumberCubit, NumberState>(
            builder: (context, state) {
              if (state is NumberInitial) {
                return Text(
                  "0",
                  style: TextStyle(fontSize: 40),
                );
              } else if (state is NumberQoshish) {
                return Text(state.number.toString(),
                    style: TextStyle(fontSize: 40));
              } else if (state is NumberAyrish) {
                return Text(state.number.toString(),
                    style: TextStyle(fontSize: 40));
              } else {
                return Text("Xato");
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<NumberCubit>(context).qoshish();
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  BlocProvider.of<NumberCubit>(context).ayrish();
                },
                child: Icon(Icons.remove),
              )
            ],
          )
        ],
      ),
    );
  }
}
