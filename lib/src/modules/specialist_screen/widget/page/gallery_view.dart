import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

@RoutePage()
class GalleryView extends StatefulWidget {
  final List<String> urlImages;

  const GalleryView({
    super.key,
    required this.urlImages,
  });

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  PageController? pageController;
  int index = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            backgroundDecoration:
                BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
            itemCount: widget.urlImages.length,
            builder: (context, index) {
              final urlImage = widget.urlImages[index];
              return PhotoViewGalleryPageOptions(
                  imageProvider: NetworkImage(urlImage),
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.contained);
            },
            onPageChanged: (index) {
              setState(() {
                this.index = index;
              });
            },
          ),
          Positioned(
            top: 70,
            left: 20,
            child: GestureDetector(
              onTap: () => context.router.back(),
              child: Icon(
                Icons.close,
                size: 32,
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
            ),
          ),
          Positioned.fill(
            bottom: 40,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '${index + 1} / ${widget.urlImages.length}',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
