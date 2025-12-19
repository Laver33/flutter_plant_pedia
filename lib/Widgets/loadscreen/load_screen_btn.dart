import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_app/Style/CastColors.dart';

class CustomBtnAnimate extends StatefulWidget {
  const CustomBtnAnimate({super.key});

  @override
  State<CustomBtnAnimate> createState() => _CustomBtnAnimateState();
}

class _CustomBtnAnimateState extends State<CustomBtnAnimate> 
    with SingleTickerProviderStateMixin {
  
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(seconds: 2), 
      vsync: this, 
    )..repeat(reverse: true); 
    
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 1.03, 
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut, 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          alignment: Alignment.center,
          child: SizedBox(
            width: 350,
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                context.go('/main');
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: AppColors.butColor1,
                minimumSize: const Size(350, 55),
              ),
              child: const Text(
                "Продолжение",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose(); 
    super.dispose();
  }
}