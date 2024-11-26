import 'package:flutter/material.dart';



/// Displays the Accessibility info.
///
/// Sub-info :-p
/// omg
class AccessibilityView extends StatelessWidget {
  const AccessibilityView({super.key});

  static const routeName = '/accessibility';



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: AccessibilityStatement(),
      ),
    );
  }
}


class AccessibilityStatement extends StatelessWidget {
  const AccessibilityStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // Title
          const Text(
            'Accessibility Statement',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),

          // Last Updated
          const Text(
            'Last Updated: November 25, 2024',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 16.0),

          // Commitment Section
          _buildSectionHeader('Our Commitment'),
          const Text(
            'Student Success Services is committed to ensuring digital accessibility for people with disabilities. We are continually improving the user experience for everyone and applying the relevant accessibility standards.',
          ),
          const SizedBox(height: 16.0),

          // Conformance Status Section
          _buildSectionHeader('Conformance Status'),
          const Text(
            'We strive to conform to the Web Content Accessibility Guidelines (WCAG) 2.1 Level AA standards. These guidelines explain how to make web content more accessible for people with disabilities and more user-friendly for everyone.',
          ),
          const SizedBox(height: 16.0),

          // Measures Taken Section
          _buildSectionHeader('Measures Taken'),
          const Text(
            'We aim to heed the following measures to ensure accessibility:',
          ),
          _buildList(
            [
              'Provide clear and consistent navigation',
              'Ensure sufficient color contrast',
              'Offer text alternatives for non-text content',
              'Support keyboard navigation',
              'Provide visible focus indicators',
              'Enable text resizing without loss of functionality',
              'Include ARIA landmarks and labels',
              'Ensure form fields are properly labeled',
              'Provide skip navigation links',
              'Support screen readers',
              'Include alternative text for images',
              'Provide captions for multimedia content',
            ], 'check',
          ),
          const SizedBox(height: 16.0),
          _buildSectionHeader('Technology Used'),
          const Text('Our website is created with Flutter and works with the particular combinations of web browsers and assistive technologies or plugins installed on your computer:'),
          const SizedBox(height: 8.0),
          _buildList(
            [
              'HTML', 
              'WAI-ARIA',
              'CSS',
              'JavaScript'
            ], 
            'bullet'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('Assessment Methods'),
          const Text("We assess our website\'s accessibility through manual testing with assistive technologies."),
          const SizedBox(height: 16.0),
          _buildSectionHeader('Known Issues'),
          const Text('While we strive for WCAG 2.1 Level AA compliance, some content may not yet be fully accessible.'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('Feedback'),
          const Text('We welcome your feedback on the accessibility of Student Success Services. Please let us know if you encounter accessibility barriers on our website.'),
          const Text('We can be reached via email at accessibility@studentsuccessservices.org and try to respond within 3 business days.'),
          const SizedBox(height: 16.0),
        _buildSectionHeader('Technical Specifications'),
        const Text('Accessibility of our website relies on the following technologies to work with the particular combination of web browser and any assistive technologies or plugins installed on your computer:'),
        const SizedBox(height: 8.0),
        _buildList(
          [
            'HTML5',
            'CSS3',
            'JavaScript'
          ],
          'bullet',
        ),
        const Text('The website is designed to be compatible with NVDA'),
        ],

      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildList(List<String> items, String type) {
    if (type == 'check') {
      return Column(
        children: items.map((item) => _buildCheckListItem(item)).toList(),
      );
    } else {
      return Column(
        children: items.map((item) => _buildBulletListItem(item)).toList(),
      );
    }
  }

  Widget _buildCheckListItem(String item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.check_circle_outline, size: 16.0),
        SizedBox(width: 8.0),
        Flexible(
          child: Text(item),
        ),
      ],
    );
  }
    Widget _buildBulletListItem(String item) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("\u2022"),
        SizedBox(width: 8.0),
        Flexible(
          child: Text(item),
        ),
      ],
    );
  }
}
