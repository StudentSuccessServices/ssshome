import 'package:flutter/material.dart';

/// Displays the Accessibility info.
///
/// Sub-info :-p
/// omg
class PrivacyView extends StatelessWidget {
  const PrivacyView({super.key});

  static const routeName = '/privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: PrivacyNotice(),
      ),
    );
  }
}


class PrivacyNotice extends StatelessWidget {
  const PrivacyNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // Title
          const Text(
            'Privacy Notice',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),

          // Last Updated
          const Text(
            'Last Updated: November 26, 2024',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16.0),

          // Commitment Section
          _buildSectionHeader('1. Introduction'),
          const Text(
            'Welcome to Student Success Services (“SSS”, "we," "our," or "us"). We respect your privacy and are committed to protecting your personal data. This privacy notice explains how we collect, use, and protect your information when you visit our website.',
          ),
          const SizedBox(height: 16.0),
          _buildSectionHeader('2. Information We Collect'),
          const SizedBox(height: 6.0),
          _buildSubSectionHeader('2.1 Information You Provide to Us'),
          _buildList(
            [ 
            'Contact information (name, email address, phone number)',
            'Account credentials (username and password)',
            'Communication preferences',
            'Any other information you choose to provide'
          ], 'bullet'),
          const SizedBox(height: 6.0),

          _buildSubSectionHeader('2.2 Information Automatically Collected'),
          _buildList(
            [ 
            'IP address',
            'Browser type and version',
            'Device information',
            'Cookie data',
            'Usage data',
            'Location data',
          ], 'bullet'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('3. How We Use Your Information'),
          const Text('We use your personal information to:'),
          _buildList(
            [
              'Provide and maintain our services',
              'Respond to your inquiries and requests',
              'Send communications',
              'Improve our website and services',
              'Comply with legal obligations',
              'Detect and prevent fraud',
            ], 'bullet'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('4. How We Share Your Information'),
          const Text('We may share your information with:'),
          _buildList(
            [
              'Service providers and business partners',
              'Legal authorities when required by law',
              'Affiliated companies',
              'Third parties in the event of a business transfer',
            ], 'bullet'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('5. Your Privacy Rights'),
          const Text('You have the right to:'),
          _buildList(
            [
              'Correct inaccurate data'
              'Withdraw consent',
              ], 'bullet'      ),
          const SizedBox(height: 16.0), 
          _buildSectionHeader('6. Data Security'),
          const Text('We implement appropriate technical and organizational measures to protect your personal information against unauthorized access, alteration, disclosure, or destruction.'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('7. Data Retention'),
          const Text('We retain your personal information for as long as necessary to fulfill the purposes outlined in this privacy notice, unless a longer retention period is required by law.'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('8. Children\'s Privacy'),
          const Text('Our website is not intended for children under the age of 13. We do not knowingly collect personal information from children under 13.'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('9. International Data Transfers'),
          const Text('We may transfer your personal information to countries outside your residence jurisdiction. When we do so, we ensure appropriate safeguards are in place.'),
          const SizedBox(height: 16.0),
          _buildSectionHeader('10. Changes to This Privacy Notice'),
          const Text('We reserve the right to update this privacy notice at any time. We will notify you of any changes by posting the new privacy notice on this page.'),
          const SizedBox(height: 16.0), 
          _buildSectionHeader('11. Contact Us'),
          const Text('If you have any questions about this privacy notice, please contact us at:  privacy@studentsuccessservices.org'),
          const SizedBox(height: 16.0),          
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
    Widget _buildSubSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14.0,
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
        const SizedBox(width: 8.0),
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
        const SizedBox(width: 8.0),
        Flexible(
          child: Text(item),
        ),
      ],
    );
  }
}