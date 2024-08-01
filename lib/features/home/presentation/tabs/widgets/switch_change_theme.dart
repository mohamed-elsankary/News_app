import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/manger/set_data/set_data_cubit.dart';

class SwitchChangeTheme extends StatefulWidget {
  const SwitchChangeTheme({super.key});

  @override
  State<SwitchChangeTheme> createState() => _SwitchChangeThemeState();
}

class _SwitchChangeThemeState extends State<SwitchChangeTheme> {
  @override
  Widget build(BuildContext context) {
    return Switch(
        activeColor: Colors.black,
        activeTrackColor: Colors.amber,
        inactiveThumbColor: Colors.white,
        inactiveTrackColor: Colors.blue,
        value: BlocProvider.of<SetDataCubit>(context).getData() ?? false,
        onChanged: (value) async {
          await BlocProvider.of<SetDataCubit>(context).upDate(value: value);
          setState(() {});
        });
  }
}
