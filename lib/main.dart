import 'package:bloc/bloc.dart';
import 'package:breaking_bad/layout/cubit/cubit.dart';
import 'package:breaking_bad/shared/bloc_observer.dart';
import 'package:breaking_bad/test_widgets/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'layout/home_layout.dart';
import 'shared/network/remote/dio_helper.dart';
import 'package:dio/dio.dart';
void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context)=>BreakingBadCubit()..getAllCharacters(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[900],
          appBarTheme:const AppBarTheme(
            backgroundColor: Colors.orangeAccent,
            backwardsCompatibility: false,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark
            ),
          )
        ),
        home:  TestWidget(),
      ),
    );
  }
}









