import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    ResponsiveGridBreakpoints.value = ResponsiveGridBreakpoints(
      xs: 768,
      sm: 822,
      md: 1240,
      lg: 1440,
    );
    return Container(
      color: Colors.white,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 1,
            md: 1,
            sm: 1,
            xl: 1,
            xs: 1,
            child: Container(),
          ),
          //Formulario
          ResponsiveGridCol(
            lg: 4,
            md: 4,
            sm: 5,
            xl: 4,
            xs: 10,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  child: Container(),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "ORDER NOW",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 102, 199),
                            fontFamily: 'Aleo',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: (MediaQuery.of(context).size.width < 329)
                                ? 35
                                : 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "AND GET THE\nMOST DIVINE\nTASTE RIGHT\nTO YOUR\nDOORSTEP.",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 102, 199),
                            fontWeight: FontWeight.w100,
                            fontStyle: FontStyle.italic,
                            fontSize: (MediaQuery.of(context).size.width < 329)
                                ? 35
                                : 40,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "PURCHASE ORDER FORM",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 102, 199),
                            fontFamily: 'Aleo',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Row(
                      children: const [
                        Text(
                          "ADDRESS",
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 102, 199),
                            fontFamily: 'Aleo',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Street",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Building",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "City",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Region",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Zip Code",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Country",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            decoration: const InputDecoration(
                              labelText: "ORDERING DATE",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(), //get today's date
                                firstDate: DateTime
                                    .now(), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101),
                              );
                            },
                          ),
                          const SizedBox(height: 10),
                          const TextField(
                            decoration: InputDecoration(
                              labelText: "Quantity",
                              labelStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 199),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.zero,
                              ),
                              constraints: BoxConstraints(
                                maxHeight: 40,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              shape: const MaterialStatePropertyAll(
                                StadiumBorder(),
                              ),
                              backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 0, 102, 199),
                              ),
                              fixedSize: const MaterialStatePropertyAll(
                                Size(70, 30),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text("Order"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  child: Container(
                    height: 50,
                  ),
                ),
              ],
            ),
          ),
          ResponsiveGridCol(
            lg: 0,
            md: 0,
            sm: 0,
            xl: 0,
            xs: 1,
            child: Container(
                height: (MediaQuery.of(context).size.width > 768) ? 100 : 0),
          ),

          //imagen
          ResponsiveGridCol(
            lg: 7,
            md: 7,
            sm: 6,
            xl: 7,
            xs: 12,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  child: Container(
                    height: (MediaQuery.of(context).size.width < 768) ? 0 : 30,
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 0,
                  child: Container(
                    height: (MediaQuery.of(context).size.width < 768) ? 0 : 150,
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xl: 12,
                  xs: 12,
                  // ignore: avoid_unnecessary_containers
                  child: Container(
                    child: ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                          lg: 12,
                          md: 12,
                          sm: 12,
                          xl: 12,
                          xs: 12,
                          child: Container(
                            padding: const EdgeInsets.only(right: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/pez.png",
                                  height: 50,
                                  fit: BoxFit.contain,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          lg: 12,
                          md: 12,
                          sm: 12,
                          xl: 12,
                          xs: 12,
                          // ignore: avoid_unnecessary_containers
                          child: Container(
                            child: Image.asset(
                              "assets/Caja.HeavenFish.png",
                              fit: BoxFit.contain,
                              height: 300,
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          lg: 12,
                          md: 12,
                          sm: 12,
                          xl: 12,
                          xs: 12,
                          child: Container(
                            padding: const EdgeInsets.only(right: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Image.asset(
                                  "assets/pez.png",
                                  height: 30,
                                  fit: BoxFit.contain,
                                  color: const Color.fromARGB(255, 0, 102, 199),
                                ),
                                Image.asset(
                                  "assets/pez.png",
                                  height: 30,
                                  fit: BoxFit.contain,
                                  color: const Color.fromARGB(255, 0, 102, 199),
                                ),
                                Image.asset(
                                  "assets/pez.png",
                                  height: 30,
                                  fit: BoxFit.contain,
                                  color: const Color.fromARGB(255, 0, 102, 199),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // child: ResponsiveGridRow(
      //   children: [
      //     ResponsiveGridCol(
      //       xs: 1,
      //       md: 1,
      //       lg: 1,
      //       xl: 1,
      //       sm: 1,
      //       child: Container(
      //         color: Colors.red,
      //         height: 100,
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       lg: 3,
      //       md: 4,
      //       sm: 5,
      //       xl: 3,
      //       xs: 11,
      //       child: Container(
      //         color: Colors.deepPurple,
      //         child: const Text(
      //           "ORDER NOW",
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 0, 102, 199),
      //             fontFamily: 'Aleo',
      //             fontWeight: FontWeight.bold,
      //             fontStyle: FontStyle.italic,
      //             fontSize: 40,
      //           ),
      //         ),
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       lg: 8,
      //       md: 7,
      //       sm: 6,
      //       xl: 8,
      //       xs: 0,
      //       child: Container(
      //         color: Colors.red,
      //         height: 100,
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       xs: 1,
      //       md: 1,
      //       lg: 1,
      //       xl: 1,
      //       sm: 1,
      //       child: Container(
      //         color: Colors.red,
      //         height: 100,
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       lg: 3,
      //       md: 4,
      //       sm: 5,
      //       xl: 3,
      //       xs: 11,
      //       child: Container(
      //         color: Colors.yellow,
      //         child: const Text(
      //           "AND GET THE\nMOST DIVINE\nTASTE RIGHT\nTO YOUR\nDOORSTEP.",
      //           style: TextStyle(
      //             color: Color.fromARGB(255, 0, 102, 199),
      //             fontWeight: FontWeight.w100,
      //             fontStyle: FontStyle.italic,
      //             fontSize: 40,
      //             height: 1,
      //           ),
      //         ),
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       xs: 1,
      //       md: 3,
      //       lg: 4,
      //       xl: 4,
      //       sm: 2,
      //       child: Container(
      //         color: Colors.red,
      //         height: 100,
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       xs: 0,
      //       md: 4,
      //       lg: 4,
      //       xl: 4,
      //       sm: 4,
      //       child: Container(
      //         color: Colors.red,
      //         height: 100,
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       xs: 0,
      //       md: 1,
      //       lg: 1,
      //       xl: 1,
      //       sm: 1,
      //       child: Container(
      //         color: Colors.red,
      //         height: 100,
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       xs: 9,
      //       md: 4,
      //       lg: 3,
      //       sm: 4,
      //       xl: 3,
      //       child: Container(
      //         color: Colors.black,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             const Padding(
      //               padding: EdgeInsets.symmetric(vertical: 20),
      //               child: Text(
      //                 "PURCHASE ORDER FORM",
      //                 style: TextStyle(
      //                   color: Color.fromARGB(255, 0, 102, 199),
      //                   fontFamily: 'Aleo',
      //                   fontWeight: FontWeight.bold,
      //                   fontStyle: FontStyle.italic,
      //                   fontSize: 19,
      //                 ),
      //               ),
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(top: 10, bottom: 10),
      //               child: Form(
      //                 child: Column(
      //                   children: [
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "Street",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "Building",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "City",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "Region",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "Zip Code",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "Country",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     TextField(
      //                       decoration: const InputDecoration(
      //                         labelText: "ORDERING DATE",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                       ),
      //                       readOnly: true,
      //                       onTap: () async {
      //                         DateTime? pickedDate = await showDatePicker(
      //                           context: context,
      //                           initialDate: DateTime.now(), //get today's date
      //                           firstDate: DateTime
      //                               .now(), //DateTime.now() - not to allow to choose before today.
      //                           lastDate: DateTime(2101),
      //                         );
      //                       },
      //                     ),
      //                     const SizedBox(height: 10),
      //                     const TextField(
      //                       decoration: InputDecoration(
      //                         labelText: "Quantity",
      //                         labelStyle: TextStyle(
      //                           color: Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         border: OutlineInputBorder(
      //                           borderSide: BorderSide(width: 1),
      //                           borderRadius: BorderRadius.zero,
      //                         ),
      //                         constraints: BoxConstraints(
      //                           maxHeight: 40,
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(height: 10),
      //                     ElevatedButton(
      //                       style: ButtonStyle(
      //                         elevation: MaterialStateProperty.all(0),
      //                         shape: const MaterialStatePropertyAll(
      //                           StadiumBorder(),
      //                         ),
      //                         backgroundColor: const MaterialStatePropertyAll(
      //                           Color.fromARGB(255, 0, 102, 199),
      //                         ),
      //                         fixedSize: const MaterialStatePropertyAll(
      //                           Size(70, 30),
      //                         ),
      //                       ),
      //                       onPressed: () {},
      //                       child: const Text("Order"),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     ResponsiveGridCol(
      //       xs: 12,
      //       md: 7,
      //       lg: 8,
      //       sm: 7,
      //       xl: 8,
      //       child: Container(
      //         color: Colors.green,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(left: 300),
      //               child: Image.asset(
      //                 "assets/pez.png",
      //                 height: 50,
      //                 fit: BoxFit.contain,
      //                 alignment: Alignment.topRight,
      //                 color: Colors.red,
      //               ),
      //             ),
      //             Image.asset(
      //               "assets/Caja.HeavenFish.png",
      //               fit: BoxFit.contain,
      //               height: 400,
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.only(right: 50),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 children: [
      //                   Image.asset(
      //                     "assets/pez.png",
      //                     height: 30,
      //                     fit: BoxFit.contain,
      //                     color: const Color.fromARGB(255, 0, 102, 199),
      //                   ),
      //                   Image.asset(
      //                     "assets/pez.png",
      //                     height: 30,
      //                     fit: BoxFit.contain,
      //                     color: const Color.fromARGB(255, 0, 102, 199),
      //                   ),
      //                   Image.asset(
      //                     "assets/pez.png",
      //                     height: 30,
      //                     fit: BoxFit.contain,
      //                     color: const Color.fromARGB(255, 0, 102, 199),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );

//
  }
}
