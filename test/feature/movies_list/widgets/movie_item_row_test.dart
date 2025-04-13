import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:filmguru/data/model/movie_item.dart';
import 'package:filmguru/feature/movies_list/widgets/movie_item_row.dart';

void main() {
  const testTitle = 'The Matrix';
  const testPosterUrl = 'https://example.com/poster.jpg';

  final testMovie = MovieItem(title: testTitle, poster: testPosterUrl);

  testWidgets('renders movie title and poster', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MovieItemRow(testMovie),
          ),
        ),
      );

      // Wait for images to load
      await tester.pump();

      // Check title
      expect(find.text(testTitle), findsOneWidget);

      // Check image
      final imageFinder = find.byType(Image);
      expect(imageFinder, findsOneWidget);

      final image = tester.widget<Image>(imageFinder);
      expect(image.image, isA<NetworkImage>());
      final networkImage = image.image as NetworkImage;
      expect(networkImage.url, equals(testPosterUrl));
    });
  });
}
