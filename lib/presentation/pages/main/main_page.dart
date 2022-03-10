import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medcentrservis/presentation/constant/page_list.dart';
import 'package:medcentrservis/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:medcentrservis/presentation/widgets/custom_drawer.dart';
import 'package:responsiveness/responsiveness.dart';
import '../../widgets/main_appbar.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      appBar: MainAppBar(
        gKey: _key,
      ),
      drawer: const CustomDrawer(),
      body: BlocBuilder<NavigationCubit, int>(
        builder: (context, state) {
          return PageList.pageList[state];
        },
      ),
    );
  }
}
