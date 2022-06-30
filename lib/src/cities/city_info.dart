import 'package:flutter/material.dart';
import 'package:students/mock/mock_model.dart';
import '../../mock/mock_data.dart';
import 'package:students/src/Cities/constants.dart';

class CityInfo extends StatelessWidget {
  var index;

  CityInfo({
    Key? key,
    required this.cities,
  }) : super(key: key);

  final mockData2 cities;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.82,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Color.fromARGB(255, 103, 0, 0),
          alignment: Alignment.center,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 15,
                ),
                Container(
                  height: 222,
                  child: Image.network(cities.profileImage),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      Text(
                        cities.city_name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  size: 15.0,
                                  color:
                                      index == 4 ? Colors.grey : Colors.orange,
                                )).toList().cast<Widget>(),
                      ),
                      const SizedBox(height: 10),
                      Text(cities.city_info),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
