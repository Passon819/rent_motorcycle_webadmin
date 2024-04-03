import 'package:flutter/material.dart';

class WaitApproveScreen extends StatefulWidget {
  const WaitApproveScreen({super.key});

  @override
  State<WaitApproveScreen> createState() => _WaitApproveScreenState();
}

class _WaitApproveScreenState extends State<WaitApproveScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('รอยืนยันบัญชีร้าน'),
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
                                "Articles",
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
                            "6 Articles",
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
                                Icons.comment,
                                size: 26.0,
                                color: Colors.red,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Comments",
                                style: TextStyle(
                                  color: Colors.red,
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
                            "+32 Comments",
                            style: TextStyle(
                              color: Colors.red,
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
                                Icons.people,
                                size: 26.0,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(
                                "Subscribers",
                                style: TextStyle(
                                  fontSize: 26.0,
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            "3.2M Subscribers",
                            style: TextStyle(
                              fontSize: 36,
                              color: Colors.amber,
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
                                "Revenue",
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
                            "2.300 \$",
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      "6 Articles",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "3 new Articles",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
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
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.deepPurple.shade400,
                  ),
                  label: Text(
                    "2022, July 14, July 15, July 16",
                    style: TextStyle(
                      color: Colors.deepPurple.shade400,
                    ),
                  ),
                ),
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
              height: 40.0,
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
