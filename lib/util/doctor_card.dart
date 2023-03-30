import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProffesion;

  DoctorCard({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProffesion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 40),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 194, 239, 245),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Expanded(
          child: Column(
            children: [
              //picture of doctor
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  doctorImagePath,
                  height: 100,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //rating out of 5

              Row(
                children: [
                  Icon(Icons.star, color: Color.fromARGB(255, 239, 215, 109)),
                  Text(
                    rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),

              //Doctor name
              Text(
                doctorName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),

              //Doctor title
              Text(doctorProffesion + ' 7 y.e.')
            ],
          ),
        ),
      ),
    );
  }
}
