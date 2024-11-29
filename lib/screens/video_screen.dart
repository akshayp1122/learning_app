import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/bloc/video_bloc/video_bloc.dart';
import 'package:learning_app/bloc/video_bloc/video_event.dart';
import 'package:learning_app/bloc/video_bloc/video_state.dart';
import 'package:learning_app/models/video.dart';
import 'package:learning_app/screens/video_player.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Trigger the fetch event for VideoBloc when the page is loaded
    context.read<VideoBloc>().add(const FetchVideos());

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
            'Videos',
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
        color:const Color(0xFFE6FFE6),
        child: BlocBuilder<VideoBloc, VideoState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(child: Text('Welcome!')),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (videos) {
                return ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (context, index) {
                    final video = videos[index];
                    // final thumbnailUrl = generateThumbnail(video);
                    final randomImage = _getRandomImage(index); // Get a random image for each video
        
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoPlayerPage(
                              videoUrl: video.videoUrl,
                              videoType: video.videoType,
                            ),
                          ),
                        );
                      },
                      child: Card(
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 8,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CachedNetworkImage(
                                imageUrl: randomImage,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.broken_image),
                              ),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      video.title,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      video.description,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                right: 10,
                                bottom: 10,
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
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
    );
  }

  // Function to generate video thumbnails
 String generateThumbnail(Video video) {
  if (video.videoType == 'youtube') {
    // Extract YouTube video ID using the youtube_player_flutter method
    final videoId = YoutubePlayer.convertUrlToId(video.videoUrl);
    if (videoId != null) {
      return 'https://img.youtube.com/vi/$videoId/hqdefault.jpg'; // High-quality thumbnail
    }
    return ''; // Return empty if YouTube video ID is invalid
  } else if (video.videoType == 'vimeo') {
    // Extract the Vimeo video ID (assuming URL is something like https://vimeo.com/VIDEO_ID)
    final videoId = Uri.parse(video.videoUrl).pathSegments.last;
    return 'https://vumbnail.com/$videoId.jpg'; // Using vumbnail for Vimeo thumbnails
  }
  return ''; // Return empty for unsupported types
}

String _getRandomImage(int index) {
    // List of random educational image URLs
    const images = [
      'https://media.istockphoto.com/id/1467350162/photo/business-performance-checklist-concept-businessman-using-laptop-doing-online-checklist-survey.jpg?s=1024x1024&w=is&k=20&c=6U8qstACyhbHX9mf6ksvLPzFzl40UabNMfx7Mt1jHJo=', // Example image 1
      'https://media.istockphoto.com/id/2050779842/photo/hispanic-woman-programmer-writing-code-on-dual-monitors-for-tech-projects.jpg?s=1024x1024&w=is&k=20&c=RqPX9hefbyS_O9n0IYpZa6u31BNezWol17-h6iS4MRU=', // Example image 2
      'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Example image 3
      'https://images.unsplash.com/photo-1460518451285-97b6aa326961?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Example image 4
      'https://images.unsplash.com/photo-1585432959445-662c9bbcd91d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Example image 1
      'https://images.unsplash.com/photo-1585432959449-b1c9c8cc49ac?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fHN0dWR5fGVufDB8fDB8fHww', // Example image 2
      'https://images.unsplash.com/photo-1621356986575-05811227a42e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Example image 3
      'https://images.unsplash.com/photo-1585432959389-67f059cf1e41?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Example image 4
    ];

    // Return a random image from the list
    // return images[(DateTime.now().millisecondsSinceEpoch ~/ 1000) % images.length];
     return images[index % images.length];
  }


}
