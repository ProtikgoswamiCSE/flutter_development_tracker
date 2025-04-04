import 'package:flutter/material.dart';

class Task_9 extends StatelessWidget {
  const Task_9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Task_9')),
        backgroundColor: const Color.fromARGB(255, 198, 235, 176),
      ),
      body: const AnimatedCardListView(),
    );
  }
}

class AnimatedCardWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;

  const AnimatedCardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedCardWidgetState createState() => _AnimatedCardWidgetState();
}

class _AnimatedCardWidgetState extends State<AnimatedCardWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 188, 172, 172).withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        transform: Matrix4.identity()..scale(_isExpanded ? 1.05 : 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                widget.imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    widget.subtitle,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              crossFadeState:
                  _isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
              firstChild: const SizedBox.shrink(),
              secondChild: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.description,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedCardListView extends StatelessWidget {
  const AnimatedCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AnimatedCardWidget(
          imageUrl: 'assets/img1.jpg',
          title: 'Living Interior',
          subtitle: 'Living Space',
          description:
              'A well-designed living room combines comfort and style, featuring cozy seating, elegant decor, and warm lighting to create a welcoming atmosphere.',
        ),
        AnimatedCardWidget(
          imageUrl: 'assets/img6.jpg',
          title: 'Plant Corner Interior',
          subtitle: 'Plant Corner',
          description:
              ' A dedicated plant corner adds a refreshing touch to any space, blending greenery with stylish planters and natural light for a serene ambiance.',
        ),
        AnimatedCardWidget(
          imageUrl: 'assets/img3.jpg',
          title: 'Dining Room Interior',
          subtitle: 'Dining Space',
          description:
              'The dining room is designed for both functionality and aesthetics, featuring a well-arranged table setting, ambient lighting, and elegant decor for a pleasant dining experience.',
        ),
      ],
    );
  }
}
