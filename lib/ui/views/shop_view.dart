import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveGridCol(
          child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: ResponsiveGridRow(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      "ORDER NOW",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 102, 199),
                        fontFamily: 'Aleo',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: const Text(
                    "AND GET THE\nMOST DIVINE\nTASTE RIGHT\nTO YOUR\nDOORSTEP.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "PURCHASE ORDER FORM",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 102, 199),
                        fontFamily: 'Aleo',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: const Text(
                    "ADDRES",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 102, 199),
                      fontFamily: 'Aleo',
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                    ),
                  ),
                ),
                ResponsiveGridCol(
                  lg: 3,
                  md: 3,
                  sm: 3,
                  xs: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Form(
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
                  lg: 9,
                  md: 9,
                  sm: 9,
                  xs: 9,
                  child: ResponsiveGridRow(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveGridCol(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: Image.asset(
                            "assets/pez.png",
                            height: 50,
                            fit: BoxFit.contain,
                            alignment: Alignment.centerRight,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      ResponsiveGridCol(
                        child: Image.asset(
                          "assets/Caja.HeavenFish.png",
                          fit: BoxFit.contain,
                          height: 400,
                        ),
                      ),
                      ResponsiveGridCol(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 50),
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
                      ResponsiveGridCol(
                        child: const SizedBox(
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

//
  }
}
