// import 'dart:developer';
// import 'dart:io' as io;
//
// import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
// import 'package:http/http.dart' as http;
// import 'package:html/parser.dart' as parser;
// import 'package:html/dom.dart' as dom;
// import 'package:image_downloader/image_downloader.dart';
// import 'package:image/image.dart';
//
// class Repositories {
//   Repositories._();
//   static Repositories instance = Repositories._();
//
//   //:::::::::::::::::::::: SCRAP IMAGE LINK FROM WEB :::::::::::::::::::::::
//   Future<String> scrapImageLinkFromWeb() async {
//     String baseUrl = 'https://www.vpnbook.com/';
//     final response =
//     await http.get(Uri.parse('https://www.vpnbook.com/freevpn'));
//     dom.Document document = parser.parse(response.body);
//     final elements = document.getElementsByClassName('disc');
//     List<String?> imageList = elements
//         .map((element) =>
//     element.getElementsByTagName("img")[2].attributes['src'])
//         .toList();
//     String scrappedImageLink = '$baseUrl/${imageList[2]}';
//     log(scrappedImageLink);
//     return scrappedImageLink;
//   }
//
//   //:::::::::::::::::::::::: DOWNLOAD NETWORK IMAGE ::::::::::::::::::::::::
//   Future<String> downloadImage(String scrappedImageLink) async {
//     String downloadedImagePath = '';
//     try {
//       // Saved with this method.
//       var imageId = await ImageDownloader.downloadImage(
//         scrappedImageLink,
//         destination: AndroidDestinationType.custom(directory: 'password')
//           ..inExternalFilesDir(),
//       );
//       if (imageId != null) {
//         String? imagePath = await ImageDownloader.findPath(imageId);
//         downloadedImagePath = imagePath!;
//         log('Image downloaded. path:::::: $downloadedImagePath');
//       }
//     } catch (error) {
//       log(error.toString());
//     }
//     return downloadedImagePath;
//   }
//
//   //::::::::::::::::::::::::::::: RESIZE IMAGE ::::::::::::::::::::::::::::
//   Future<String> resizeImage(String downloadedImagePath) async {
//     String resizedImagePath = '';
//     // Read a jpeg image from file.
//     Image? image = decodeImage(io.File(downloadedImagePath).readAsBytesSync());
//
//     // Resize the image to a 80x? thumbnail (maintaining the aspect ratio).
//     Image thumbnail = copyResize(image!, height: 80);
//
//     // Save the thumbnail as a PNG.
//     io.File(downloadedImagePath).writeAsBytesSync(encodePng(thumbnail));
//     resizedImagePath = downloadedImagePath;
//     return resizedImagePath;
//   }
//
//   //::::::::::::::::::::::::: CONVERT TEXT TO IMAGE ::::::::::::::::::::::::
//   Future<String> convertImageToText(String resizedImagePath) async {
//     final TextRecognizer textRecognizer = TextRecognizer();
//     final inputImage = InputImage.fromFilePath(resizedImagePath);
//     final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
//     String scannedText = '';
//     for (TextBlock block in recognizedText.blocks) {
//       // for (TextLine line in block.lines) {
//       //   scannedText = '$scannedText${line.text.replaceAll('\n', '')}\n';
//       // }
//       String blockText = block.text.replaceAll('\n', ' ');
//       scannedText = '$scannedText$blockText\n';
//     }
//     log('Scanned Password:::: $scannedText');
//     return scannedText;
//   }
//
//   //::::::::::::::::::::::: GET PASSWORD FROM WEB IMAGE ::::::::::::::::::::::
//   Future<String> getPasswordFromWebImage() async {
//     String scannedPasswordFromText = '';
//     try {
//       String scrappedImageLink = await scrapImageLinkFromWeb();
//       String downloadedImagePath = await downloadImage(scrappedImageLink);
//       String resizedImagePath = await resizeImage(downloadedImagePath);
//       scannedPasswordFromText = await convertImageToText(resizedImagePath);
//     } catch (error) {
//       log(error.toString());
//     }
//     return scannedPasswordFromText;
//   }
// }
