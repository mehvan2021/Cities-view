import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students/mock/mock_data.dart';
import 'package:students/mock/mock_model.dart';
import 'package:students/src/cities/city_info.dart';

class CitiesHomeScreenView extends StatelessWidget {
  const CitiesHomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                  title: Text('about us'),
                  onTap: () {
                    Navigator.of(context).pushNamed('/about');
                  })
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Kurdistan Cities list',
            style: TextStyle(
                color: Color.fromARGB(255, 238, 234, 234),
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                //is for list view of Cities
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: mockData.length,
                  itemBuilder: (context, index) {
                    List<mockData2> _cities = mockData.map(
                      (element) {
                        return mockData2.fromJson(element);
                      },
                    ).toList();

                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Card(
                        color: Color.fromARGB(255, 203, 199, 199),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 130,
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Container(
                                    child: Image.network(
                                      //  mockData[index]["profileImage"] .toString(),
                                      _cities[index].profileImage,
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CityInfo(
                                                // before using model   index: index,
                                                cities: _cities[index],
                                              )));
                                },
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 99,
                                    height: 33,
                                    color: Color.fromARGB(255, 4, 71, 185),
                                    child: Center(
                                      child: Text(
                                        //  mockData[index]["city_name"].toString(),
                                        _cities[index].city_name,

                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 246, 246)),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 33,
                                    color: Color.fromARGB(255, 6, 137, 67),
                                    child: Center(
                                      child: Text(
                                        //  mockData[index]["zip_code"].toString(),
                                        _cities[index].zip_code,
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 246, 246, 246)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //TODO: navigato to details screen
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              //was for hello

              height: 25,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
