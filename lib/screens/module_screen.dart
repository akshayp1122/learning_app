import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/bloc/home_bloc/modle_bloc/module_bloc.dart';
import 'package:learning_app/bloc/home_bloc/modle_bloc/module_event.dart';
import 'package:learning_app/bloc/home_bloc/modle_bloc/module_state.dart';
import 'package:learning_app/components/cutome_navigation.dart';
import 'package:learning_app/screens/video_screen.dart';

class ModuleListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch modules when the screen is built
    context.read<ModuleBloc>().add(const FetchModules());

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // Set the height of the AppBar
        child: AppBar(
          backgroundColor: Color(0xFF65A765), // Main background color
          elevation: 10, // Shadow effect
          shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
          title: const Text(
            'Modules',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: Colors.white, // Text color
            ),
          ),
          centerTitle: true, // Centers the title
         
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Add padding to the body
        child: Container(
          color: const Color(0xFFE6FFE6),
          child: BlocBuilder<ModuleBloc, ModuleState>(
            builder: (context, state) {
              return state.when(
                initial: () => const Center(child: Text('Welcome!')),
                loading: () => const Center(
                    child: CircularProgressIndicator()), // Loading animation
                loaded: (modules) {
                  return ListView.builder(
                    itemCount: modules.length,
                    itemBuilder: (context, index) {
                      final module = modules[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                           CustomPageRoute(page: VideoListScreen()), // Custom route with animation
                          );
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            title: Text(
                              module.title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                            subtitle: Text(
                              module.description,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                            trailing: const Icon(Icons.arrow_forward,
                                color: Colors.blueAccent),
                          ),
                        ),
                      );
                    },
                  );
                },
                error: (message) => Center(child: Text('Error: $message')),
              );
            },
          ),
        ),
      ),
    );
  }
}
