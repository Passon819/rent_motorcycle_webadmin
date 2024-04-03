import 'package:flutter/material.dart';

class HomeAccountsScreen extends StatefulWidget {
  const HomeAccountsScreen({super.key});

  @override
  State<HomeAccountsScreen> createState() => _HomeAccountsScreenState();
}

class _HomeAccountsScreenState extends State<HomeAccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return
        //     Column(
        //     children: [
        //       Text('บัญชี'),
        //       // CircleAvatar(
        //       //   backgroundColor: Colors.black,
        //       //   radius: 65,
        //       //   backgroundImage: NetworkImage(
        //       //       'https://down-th.img.susercontent.com/file/sg-11134201-22100-2ka5zqdka4ivc2'),
        //       //)
        //     ],
        //   );
        Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.article,
                                size: 26.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "บัญชีผู้ใช้ทั่วไป",
                                style: TextStyle(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "6 บัญชี",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.monetization_on_outlined,
                                size: 26.0,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "บัญชีร้านจยย.",
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "2 บัญชี",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Now let's set the article section
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 300.0,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Type Article Title",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),

            //let's set the filter section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TextButton.icon(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.arrow_back,
                //     color: Colors.deepPurple.shade400,
                //   ),
                //   label: Text(
                //     "2022, July 14, July 15, July 16",
                //     style: TextStyle(
                //       color: Colors.deepPurple.shade400,
                //     ),
                //   ),
                // ),
                const Text('บัญชีทั้งหมด', style: TextStyle(fontSize: 18)),
                Row(
                  children: [
                    DropdownButton(
                        hint: const Text("Filter by"),
                        items: [
                          const DropdownMenuItem(
                            value: "Date",
                            child: Text("Date"),
                          ),
                          const DropdownMenuItem(
                            value: "Comments",
                            child: Text("Comments"),
                          ),
                          const DropdownMenuItem(
                            value: "Views",
                            child: Text("Views"),
                          ),
                        ],
                        onChanged: (value) {}),
                    const SizedBox(
                      width: 20.0,
                    ),
                    DropdownButton(
                        hint: const Text("Order by"),
                        items: [
                          const DropdownMenuItem(
                            value: "Date",
                            child: Text("Date"),
                          ),
                          const DropdownMenuItem(
                            value: "Comments",
                            child: Text("Comments"),
                          ),
                          const DropdownMenuItem(
                            value: "Views",
                            child: Text("Views"),
                          ),
                        ],
                        onChanged: (value) {}),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //Now let's add the Table
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DataTable(
                    headingRowColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey.shade200),
                    columns: const [
                      DataColumn(label: Text("ID")),
                      DataColumn(label: Text("Article Title")),
                      DataColumn(label: Text("Creation Date")),
                      DataColumn(label: Text("Views")),
                      DataColumn(label: Text("Comments")),
                    ],
                    rows: [
                      DataRow(cells: [
                        const DataCell(Text("0")),
                        const DataCell(Text("How to build a Flutter Web App")),
                        DataCell(Text("${DateTime.now()}")),
                        const DataCell(Text("2.3K Views")),
                        const DataCell(Text("102Comments")),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text("1")),
                        const DataCell(
                            Text("How to build a Flutter Mobile App")),
                        DataCell(Text("${DateTime.now()}")),
                        const DataCell(Text("21.3K Views")),
                        const DataCell(Text("1020Comments")),
                      ]),
                      DataRow(cells: [
                        const DataCell(Text("2")),
                        const DataCell(Text("Flutter for your first project")),
                        DataCell(Text("${DateTime.now()}")),
                        const DataCell(Text("2.3M Views")),
                        const DataCell(Text("10K Comments")),
                      ]),
                    ]),
                //Now let's set the pagination
                const SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "1",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "2",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "3",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "See All",
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
