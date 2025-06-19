import 'package:flutter/material.dart';
import 'package:my_app/core/extension/sizedBox_extension.dart';
import 'package:my_app/core/utils/my_images.dart';
import 'package:my_app/core/utils/size_utils.dart';

class CarouselProductDetail extends StatelessWidget {
  CarouselProductDetail({super.key});

  final PageController _controller = PageController(viewportFraction: 0.5);
  final int itemCount = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, _) {
              return PageView.builder(
                controller: _controller,
                itemCount: itemCount,
                itemBuilder: (context, index) {
                  double currentPage = 0;
                  currentPage = _controller.hasClients
                      ? _controller.page ?? 0.0
                      : 0.0;

                  final scale = (1 - (currentPage - index).abs()).clamp(
                    0.6,
                    1.0,
                  );
                  return Transform.translate(
                    offset: Offset(-50, 0),
                    child: Transform.scale(
                      scale: scale,
                      child: Opacity(
                        opacity: scale,
                        child: Image.asset(MyImages.chair, fit: BoxFit.contain),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        20.height,
        AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            double currentPage = 0;
            currentPage = _controller.hasClients
                ? _controller.page ?? 0.0
                : 0.0;

            final progress = (currentPage + 1) / itemCount;

            return Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: screenWidth(context) * 0.5,
              ),
              child: LinearProgressIndicator(
                value: progress.clamp(0.0, 1.0),
                minHeight: 6,
                backgroundColor: Colors.grey.shade300,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            );
          },
        ),
      ],
    );
  }
}
