import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/bloc/home_bloc/modle_bloc/module_bloc.dart';
import 'package:learning_app/bloc/home_bloc/subject_bloc.dart';
import 'package:learning_app/bloc/home_bloc/subject_event.dart';
import 'package:learning_app/bloc/video_bloc/video_bloc.dart';
import 'package:learning_app/repository/home_repository.dart';
import 'package:learning_app/repository/module_repository.dart';
import 'package:learning_app/repository/video_repository.dart';
import 'package:learning_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // SubjectBloc: Manages the state for fetching and handling subjects
        BlocProvider<SubjectBloc>(
          create: (context) => SubjectBloc(
            SubjectRepository(
                dio: Dio()), // Subject repository with Dio instance
          )..add(const FetchSubjects()), // Trigger subject fetching on load
        ),

        // ModuleBloc: Manages the state for fetching and handling modules
        // ModuleBloc: Initialized but does not fetch data immediately
        BlocProvider<ModuleBloc>(
          create: (context) => ModuleBloc(ModuleRepository(dio: Dio())),
        ),

        // VideoBloc: Initialized but does not fetch data immediately
        BlocProvider<VideoBloc>(
          create: (context) => VideoBloc(VideoRepository(dio: Dio())),
        ),

        // Add other BlocProviders here as needed
      ],
      child: MaterialApp(
        title: 'Bloc Example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: AnimatedSplashScreen(),
      ),
    );
  }
}
