// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';
// import 'package:http/http.dart' as http;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoUrl;
  final String videoType; // "YouTube" or "Vimeo"

  const VideoPlayerPage({
    Key? key,
    required this.videoUrl,
    required this.videoType,
  }) : super(key: key);

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  YoutubePlayerController? _youtubeController;
  VideoPlayerController? _vimeoController;
  ChewieController? _chewieController;
  String? _errorMessage;
  double _volume = 1.0; // Default volume is 100%
  String? vimeoid;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    if (widget.videoType == "YouTube") {
      // Initialize YouTube Player
      final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
      if (videoId == null) {
        setState(() {
          _errorMessage = "Invalid YouTube URL.";
        });
        return;
      }

      _youtubeController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
            autoPlay: true, mute: false, showLiveFullscreenButton: false),
      );
    } else if (widget.videoType == "Vimeo") {
      try {
        vimeoid = extractVimeoVideoId(widget.videoUrl);
        // Fetch the playable Vimeo video URL
        // Initialize the video player
        // void _initializePlayer() {
        //   _vimeoController = VideoPlayerController.network(widget.videoUrl);

        //   _vimeoController!.initialize().then((_) {
        //     setState(() {
        //       _chewieController = ChewieController(
        //         videoPlayerController: _vimeoController!,
        //         autoPlay: true,
        //         looping: false,
        //         allowFullScreen: true,
        //         allowMuting: true,
        //         materialProgressColors: ChewieProgressColors(
        //           playedColor: Colors.blue,
        //           handleColor: Colors.blueAccent,
        //           backgroundColor: Colors.grey,
        //           bufferedColor: Colors.lightBlueAccent,
        //         ),
        //       );
        //     });
        //   });
        // }
      } catch (e) {
        setState(() {
          _errorMessage = "Failed to load Vimeo video: $e";
        });
      }
    }
    setState(() {}); // Trigger UI rebuild after initialization
  }

  // Future<String> _fetchVimeoVideoUrl(String url) async {
  //   const vimeoAccessToken =
  //       "8cb4d0618ebc983978da666dff6a23e3"; // Replace with your Vimeo API token
  //   final videoId = _extractVimeoVideoId(url);

  //   final response = await http.get(
  //     Uri.parse("https://api.vimeo.com/videos/$videoId"),
  //     headers: {"Authorization": "Bearer $vimeoAccessToken"},
  //   );

  //   if (response.statusCode == 200) {
  //     final jsonResponse = json.decode(response.body);
  //     final files = jsonResponse["files"] as List;
  //     final file = files.firstWhere(
  //         (f) => f["quality"] == "hd" && f["type"] == "video/mp4",
  //         orElse: () =>
  //             files.first); // Default to first file if no HD MP4 found
  //     return file["link"];
  //   } else {
  //     throw Exception("Vimeo API error: ${response.body}");
  //   }
  // }

  String _extractVimeoVideoId(String url) {
    final uri = Uri.parse(url);
    if (uri.host.contains("vimeo.com")) {
      return uri.pathSegments.last;
    }
    throw Exception("Invalid Vimeo URL");
  }

  @override
  void dispose() {
    // Dispose controllers
    _youtubeController?.dispose();
    _vimeoController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  // Method to handle Play/Pause toggle
  void _togglePlayPause() {
    if (_youtubeController != null) {
      if (_youtubeController!.value.isPlaying) {
        _youtubeController!.pause();
      } else {
        _youtubeController!.play();
      }
    }
  }

  // Method for fast forward by 10 seconds
  void _fastForward() {
    if (_youtubeController != null) {
      final currentPosition = _youtubeController!.value.position;
      final newPosition = currentPosition + const Duration(seconds: 10);
      _youtubeController!.seekTo(newPosition);
    }
  }

  // Method for rewind by 10 seconds
  void _rewind() {
    if (_youtubeController != null) {
      final currentPosition = _youtubeController!.value.position;
      final newPosition = currentPosition - const Duration(seconds: 10);
      if (newPosition < Duration.zero) {
        _youtubeController!.seekTo(Duration.zero);
      } else {
        _youtubeController!.seekTo(newPosition);
      }
    }
  }

  // Method to change volume
  void _setVolume(double volume) {
    // Ensure volume is between 0.0 and 1.0 before setting
    if (volume < 0.0) volume = 0.0;
    if (volume > 1.0) volume = 1.0;

    setState(() {
      _volume = volume;
    });
    print("Current volume: $_volume");

    // Convert volume to 0-100 range as expected by setVolume
    _youtubeController?.setVolume((_volume * 100).toInt());
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Video Player"),
        ),
        body: Center(
          child: Text(_errorMessage!),
        ),
      );
    }

    return Scaffold(
      body: Center(
          child: widget.videoType == "YouTube"
              ? (_youtubeController != null
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        YoutubePlayer(
                          controller: _youtubeController!,
                          showVideoProgressIndicator: true,
                        ),
                        // Video control buttons below
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: Icon(
                                  _youtubeController!.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                ),
                                onPressed: _togglePlayPause,
                              ),
                              IconButton(
                                icon: const Icon(Icons.replay_10),
                                onPressed: _rewind,
                              ),
                              IconButton(
                                icon: const Icon(Icons.forward_10),
                                onPressed: _fastForward,
                              ),
                              IconButton(
                                icon: const Icon(Icons.volume_up),
                                onPressed: () {
                                  _setVolume(
                                      _volume + 0.1); // Increase volume by 10%
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.volume_down),
                                onPressed: () {
                                  _setVolume(
                                      _volume - 0.1); // Decrease volume by 10%
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : const CircularProgressIndicator())
              : vimeoid != null
                  ? VimeoPlayer(
                      videoId: vimeoid!,
                    )
                  : const CircularProgressIndicator()),
    );
  }
}

String extractVimeoVideoId(String url) {
  final uri = Uri.parse(url);

  // If the host is vimeo.com, try extracting the video ID from the path
  if (uri.host.contains("vimeo.com")) {
    final pathSegments = uri.pathSegments;

    // The last segment should be the video ID
    if (pathSegments.isNotEmpty) {
      return pathSegments.last; // Returns the video ID (e.g., 123456789)
    } else {
      throw Exception("Invalid Vimeo URL: No video ID found.");
    }
  } else {
    throw Exception("Invalid Vimeo URL: Not a Vimeo URL.");
  }
}
