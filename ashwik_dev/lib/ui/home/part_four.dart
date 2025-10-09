import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class PartFour extends StatelessWidget {
  const PartFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50.h,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              text: 'Soc'.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall,
              children: [
                TextSpan(
                  text: 'ial'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          children: [
            IconButton(
              onPressed: () => _launchEmail(
                  email: "ashwiklingampally@gmail.com"
              ),
              icon: FaIcon(FontAwesomeIcons.google),
            ),
            IconButton(
              onPressed: () => _launchInBrowser(
                webSite: "github.com",
                path: "ashwiklingampally/",
              ),
              icon: FaIcon(FontAwesomeIcons.github),
            ),
            IconButton(
              onPressed: () => _launchInBrowser(
                webSite: "www.linkedin.com",
                path: "in/ashwik/",
              ),
              icon: FaIcon(FontAwesomeIcons.linkedin),
            ),
            IconButton(
              onPressed: _launchWhatsApp,
              icon: FaIcon(FontAwesomeIcons.whatsapp),
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _launchInBrowser({
    required String webSite,
    required String path,
  }) async {
    final Uri uri = Uri(scheme: 'https', host: webSite, path: path);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $uri');
    }
  }

  Future<void> _launchEmail({
    required String email,
  }) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: {
        'subject': 'Exciting Opportunity Based on Your Profile',
      },
    );

    try {
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri);
      } else {
        // Handle the case where the email client cannot be launched (e.g., display an error message)
        throw Exception('Could not launch email client.');
      }
    } catch (e) {
      throw Exception('Error launching email client: $e');
    }
  }

  Future<void> _launchWhatsApp() async {
    String phoneNumber = "+919618423582";
    String message = "Hello Ashwik\nI have seen your profile and it looks interesting. I have an exciting opportunity, if you are interested pls let me know.";
    String encodedMessage = Uri.encodeComponent(message); // Encode the message
    String whatsappUrl = "https://wa.me/$phoneNumber?text=$encodedMessage";

    final Uri url = Uri.parse(whatsappUrl);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
