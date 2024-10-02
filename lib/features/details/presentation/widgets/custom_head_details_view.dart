import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomHeadDetails extends StatelessWidget {
  const CustomHeadDetails({
    super.key,
  
  });


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 3.2 / 3,
          child: SvgPicture.asset(
            "assets/images/wgba.svg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 40,
          left: 16,
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                // GoRouter.of(context).go(prevRoute);
    
             
                  Navigator.pop(context);
      
                 
            
              },
            ),
          ),
        ),
        Positioned(
          top: 345,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
