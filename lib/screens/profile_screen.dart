import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const _ink = Color(0xFF17202B);
  static const _muted = Color(0xFF687385);
  static const _blue = Color(0xFF1877F2);
  static const _coverUrl =
      'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=1400&q=85';
  static const _profileUrl =
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&q=85';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildCover(),
              const SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Jethro Benedict Gil',
                      style: TextStyle(
                        color: _ink,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.5,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      '128 posts  ·  Iloilo City',
                      style: TextStyle(
                        color: _muted,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Expanded(
                          child: FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.add, size: 20),
                            label: const Text('Add to story'),
                            style: FilledButton.styleFrom(
                              backgroundColor: _blue,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: FilledButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit, size: 17),
                            label: const Text('Edit profile'),
                            style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xFFE9EDF2),
                              foregroundColor: _ink,
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              textStyle: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildPrivacyNotice(),
                    const SizedBox(height: 20),
                    const Divider(height: 1, color: Color(0xFFE7EAF0)),
                    _buildTabs(),
                    const Divider(height: 1, color: Color(0xFFE7EAF0)),
                    const SizedBox(height: 20),
                    _buildPersonalDetails(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCover() {
    return SizedBox(
      height: 222,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Image.network(
            _coverUrl,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF70A9B8), Color(0xFF24485F)],
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 14,
            child: _roundAction(Icons.menu, 'Menu'),
          ),
          Positioned(
            top: 10,
            right: 12,
            child: Row(
              children: [
                _roundAction(Icons.edit_outlined, 'Edit cover'),
                const SizedBox(width: 7),
                _roundAction(Icons.search, 'Search'),
                const SizedBox(width: 7),
                _roundAction(Icons.more_horiz, 'More options'),
              ],
            ),
          ),
          Positioned(
            right: 14,
            bottom: 12,
            child: _roundAction(Icons.camera_alt, 'Add cover photo'),
          ),
          Positioned(
            left: 18,
            bottom: -42,
            child: Container(
              width: 132,
              height: 132,
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.network(
                  _profileUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const ColoredBox(
                        color: Color(0xFFD8E4F0),
                        child: Icon(Icons.person, size: 74, color: _muted),
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _roundAction(IconData icon, String label) {
    return Material(
      color: Colors.white.withValues(alpha: 0.92),
      shape: const CircleBorder(),
      child: IconButton(
        onPressed: () {},
        tooltip: label,
        visualDensity: VisualDensity.compact,
        icon: Icon(icon, color: _ink, size: 21),
      ),
    );
  }

  Widget _buildPrivacyNotice() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.lock_outline, size: 21, color: _muted),
          const SizedBox(width: 11),
          Expanded(
            child: RichText(
              text: const TextSpan(
                style: TextStyle(color: _ink, fontSize: 13, height: 1.4),
                children: [
                  TextSpan(
                    text: 'Your profile is private. ',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(
                    text: 'Only friends can see your posts and photos. ',
                  ),
                  TextSpan(
                    text: 'Learn more',
                    style: TextStyle(color: _blue, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    const tabs = ['AI', 'Photos', 'Reels'];
    return Row(
      children: [
        for (var index = 0; index < tabs.length; index++)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: index == 0 ? _blue : _muted,
                      minimumSize: const Size.fromHeight(44),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    child: Text(tabs[index]),
                  ),
                  Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: index == 0 ? _blue : Colors.transparent,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildPersonalDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Personal details',
                style: TextStyle(
                  color: _ink,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              tooltip: 'Edit personal details',
              icon: const Icon(Icons.edit_outlined, color: _muted, size: 21),
            ),
          ],
        ),
        const SizedBox(height: 5),
        _detailRow(Icons.location_on_outlined, 'Lives in', 'Iloilo City'),
        _detailRow(
          Icons.home_outlined,
          'Address',
          '123 Jaro Street, Iloilo City',
        ),
        _detailRow(Icons.cake_outlined, 'Birth date', 'December 11, 2006'),
      ],
    );
  }

  Widget _detailRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: _muted, size: 22),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: _muted, fontSize: 12),
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: const TextStyle(
                    color: _ink,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
