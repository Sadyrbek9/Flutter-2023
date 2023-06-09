
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.containerdinTexty, required this.containerdinTexty2, required this.icon, required this.image, this.image2,});
  final String containerdinTexty, containerdinTexty2;
  final IconData icon;
  final String image;
  final String? image2;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 100, top: 15),
      height: 90,
      width: double.infinity,
      color: Colors.grey,
      child: Row(
        children: [
          Column( 
           children: [
              Text(containerdinTexty),
              Text(containerdinTexty2),
              Icon(icon),
             ],
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              Image.network(
                image,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ],
      ),
      
    );
    
  }
}