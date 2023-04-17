import 'package:flutter/material.dart';
import 'package:octohub_assignment/core/constants.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.school,
                        color: Color(0xffFEC705),
                      ),
                      Text('Education'),
                    ],
                  ),
                ),
              ),
              kWidth10,
              Expanded(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.apartment,
                        color: Color(0xff8AD1DF),
                      ),
                      Text('Nutrition'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          kHeight10,
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.pedal_bike,
                        color: Color(0xff75A997),
                      ),
                      Text('Child'),
                    ],
                  ),
                ),
              ),
              kWidth10,
              Expanded(
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.person,
                        color: Color(0xffFF8975),
                      ),
                      Text('Beauty & Care'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('More'),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.expand_more),
              ),
            ],
          ),
          const Text(
            'INCOMING EXPENSES',
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
          const Text(
            '12 total',
            style: TextStyle(color: kTextColor),
          ),
          kHeight20,
          SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView.separated(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 300,
                    color: Colors.grey[200],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Icon(Icons.person, color: Color(0xffFF8975)),
                                  kWidth10,
                                  Text(
                                    'BEAUTY & CARE',
                                    style: TextStyle(color: Color(0xffFF8975)),
                                  ),
                                ],
                              ),
                              kHeight20,
                              const Text(
                                'Dermal Softening',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: kTextColor,
                                ),
                              ),
                              kHeight20,
                              const Text(
                                'An effective antioxidant that protects the functionality of other vitamins, retains moisture, and inhibits skin aging.',
                              ),
                              kHeight20,
                              const Text(
                                'LOCATION',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTextColor),
                              ),
                              kHeight10,
                              const Text('123 Main St, Anytown USA'),
                              kHeight10,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: size.width,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color(0xffFF8975)),
                            ),
                            onPressed: () {},
                            child: const Text('CONFIRM 12.54 USD'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => kWidth10,
              itemCount: 3,
            ),
          ),
        ],
      ),
    );
  }
}
