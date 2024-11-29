import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/bloc/home_bloc/subject_bloc.dart';
import 'package:learning_app/bloc/home_bloc/subject_state.dart';
import 'package:learning_app/components/cutome_navigation.dart';
import 'package:learning_app/screens/module_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(80.0), // Set the height of the AppBar
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
            'Subjects',
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
      body: Container(
        color: Color(0xFFE6FFE6),
        child: BlocBuilder<SubjectBloc, SubjectState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Welcome!')),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (subjects) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GridView.builder(
                    itemCount: subjects.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two items per row
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 3 / 4, // Adjust for image proportions
                    ),
                    itemBuilder: (context, index) {
                      final subject = subjects[index];
                      return GestureDetector(
                        onTap: () {
                          print(
                              'Tapped on card: ${subject.title}'); // Debug log for tap
                          Navigator.push(
                            context,
                            CustomPageRoute(
                                page:
                                    ModuleListScreen()), // Custom route with animation
                          );
                        },
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                                child: Image.network(
                                  subject.image,
                                  height: 120,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        subject.title,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        subject.description,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.black54,
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
              error: (message) => Center(
                child: Text(
                  'Error: $message',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
