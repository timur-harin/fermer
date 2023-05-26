import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _slideAnimation;

  bool _isProfileOpen = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleProfile() {
    setState(() {
      _isProfileOpen = !_isProfileOpen;

      if (_isProfileOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Stack(
        children: [
          // Content Widget
          const Positioned.fill(
            child: Center(
              child: Text(
                'Main Content',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),

          // Profile Widget
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            top: _isProfileOpen ? 0 : MediaQuery.of(context).size.height * 0.6,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.4,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0, 1),
                end: Offset(0, 0),
              ).animate(CurvedAnimation(
                parent: _animationController,
                curve: Curves.easeInOut,
              )),
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(16.0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://example.com/profile_image.jpg'),
                      radius: 50.0,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'johndoe@example.com',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Hello, I\'m John Doe. Nice to meet you!',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Button Widget
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: _toggleProfile,
              child: Icon(_isProfileOpen ? Icons.close : Icons.person),
            ),
          ),
        ],
      ),
    );
  }
}
