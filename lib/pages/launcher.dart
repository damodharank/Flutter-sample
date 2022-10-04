import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget  {
  const LauncherPage({ Key? key }) : super(key: key);

@override
  _LauncherPageState createState() => _LauncherPageState();
  
}

class _LauncherPageState  extends State <LauncherPage>{

  List<CountryName> countryNames = [
    CountryName('One','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Two','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Three','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Four','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Five','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Six','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Seven','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Eight','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Nine','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
    CountryName('Ten','https://thumbs.dreamstime.com/b/tick-icon-circle-symbol-flat-solution-check-approval-128428629.jpg'),
  ];

int selectedService = 4;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                childAspectRatio: 2.0,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,), 
                physics: const NeverScrollableScrollPhysics(),
                itemCount: countryNames.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(1)
                  ),
                  child: Text(countryNames[index].name),
                );
               }),
          )
        ],
      )
    );
  }
  countryContainer(String image, String name, int index) {
    return GestureDetector(
      onTap: () {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: selectedService == index ? Colors.white : Colors.grey.shade100,
          border: Border.all(
            color: selectedService == index
                ? Colors.blue.shade100
                : Colors.grey.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(image, height: 30),
              const SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 14),
              )
            ]),
      ),
    );
  }


}

class CountryName {
  final String name;
  final String imageURL;
  CountryName(this.name, this.imageURL);
}


