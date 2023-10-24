import 'package:davinatw_fluterwidgets/form.dart';
import 'package:flutter/material.dart';

class Assignment1Page extends StatefulWidget {
  const Assignment1Page({super.key});

  @override
  State<Assignment1Page> createState() => _Assignment1PageState();
}

class _Assignment1PageState extends State<Assignment1Page> {
  Color iconColor = Colors.grey; // Initial color of the heart icon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mission 1", 
          style: TextStyle(color: Colors.white)
        ),
          backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.white,
              Colors.blue,
            ],
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    child: ClipRRect(
                      child: Image.asset(
                        'images/foto6.jpg',
                        fit: BoxFit.cover,
                        height: double.infinity,
                      ),
                    )
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/foto2.jpeg',
                            fit: BoxFit.cover
                          ),
                          )
                      ),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/foto3.jpg',
                            fit: BoxFit.cover
                          ),
                          )
                      ),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/foto4.jpg',
                            fit: BoxFit.cover
                          ),
                          )
                      ),
                      Flexible(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'images/foto5.jpg',
                            fit: BoxFit.cover
                          ),
                          )
                      ),
                    ],
                  )
                ),
                const SizedBox(height: 10), // Add space
                Flexible(
                    flex: 4,
                    child: Container(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome to Amartha Hills Batu",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                "Amartahills Hotel and Resort is the crown jewel of Hotel in Batu, Malang. Located in the highest point of Batu, Amartahills Hotel and Resort presents you the best-staying experience, beautiful view of Panderman Hills, and Arjuna mountain, include the mesmerizing city lights at night. Our hotel is suitable for both business and leisure. Amartahills hotel welcomes you with the greatest view at our infinity pool, cold mountain breeze at 15 Celcius sky lounge, along with the delicious meals at our restaurant and clubhouse.\n\nAmartahills indulges you with cozy, luxurious and comfortable dining spots that will make you take delight in every meal time. Equipped with 3 restaurant outlets, we offer you distinctive culinary themes, various culturally-influenced menu selections and finest food and beverages experiences to fulfill your appetite.\n\nAmartahills fills your journey through life with everlasting moments in 4-star hotel, which elegantly designed and established with balanced concept of resort and nature to make you feel the finest indulgence and the authentic sense of nature’s grace. With extensive, well-equipped facilities, we offer you to experience luxury in our prestigious rooms that suit your requirements, and our attentive, professional and courteous staff will treat you exceptionally with the service at its best.\n\nAmartahills believes that your pleasure is always our top priority and therefore we furnish you with various and customizable offers that are suitable with your requirements.\n\nTo share good things is our way to show our highest appreciation.\n\nFollow our Instagram account @amarthahills_hotel and discover miraculous experiences with us in Amartahills Hotel and Resort.\n",
                                style: TextStyle(color: Colors.black),
                              ),
                            ) 
                          )
                        ],
                        
                      ),
                      
                    ),
                  ),
                  
                ]
              ),
              Positioned(
                    top: 10,
                    right: 10,
                    child: FloatingActionButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)), // This line adds the rounded border
                      backgroundColor: Colors.white,
                        onPressed: () {
                          setState(() {
                            iconColor = (iconColor == Colors.red) ? Colors.grey : Colors.red; // Toggle color between red and grey
                          });
                        },
                      child: Icon(Icons.favorite, color: iconColor), 
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.blue,
                              Colors.red,
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () { 
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return FormPage();
                              })
                            );
                          },
                          child: Text("Book Now"),
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )


                  // Container(
                  //   decoration: const BoxDecoration(
                  //     gradient: LinearGradient(
                  //       begin: Alignment.topRight,
                  //       end: Alignment.bottomLeft,
                  //       colors: [
                  //         Colors.white,
                  //         Colors.blue,
                  //       ],
                  //     ),
                  //   ),
                  //   child: Positioned(
                  //     bottom: 10,
                  //     right: 10,
                  //     child: Container(
                  //       decoration: const BoxDecoration(
                  //       gradient: LinearGradient(
                  //         begin: Alignment.topRight,
                  //         end: Alignment.bottomLeft,
                  //         colors: [
                  //           Colors.white,
                  //           Colors.blue,
                  //         ],
                  //       ),
                  //     ),
                  //       child: ElevatedButton(
                  //         onPressed: () { 
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(builder: (context){
                  //               return FormPage();
                  //             })
                  //           );
                  //         },
                  //       child: Text("Book Now"),
                  //         ),
                  //       ),
                  //     ),
                  // ),
                  


              // Positioned(
              //       bottom: 10,
              //       right: 10,
              //       child: Container(
                      
              //         child: FloatingActionButton(
              //           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)), // This line adds the rounded border
              //           onPressed: () { 
              //             Navigator.push(
              //               context,
              //               MaterialPageRoute(builder: (context){
              //                 return FormPage();
              //               })
              //             );
              //            },
              //            child: Text("Book Now"),
              //            decoration: const BoxDecoration(
              //           gradient: LinearGradient(
              //             begin: Alignment.topRight,
              //             end: Alignment.bottomLeft,
              //             colors: [
              //               Colors.white,
              //               Colors.blue,
              //             ],
              //           ),
              //         ),
              //         ),
              //       ),
              //     ),
          ],
          
        ),
      ),
    
          
   );
  }
}