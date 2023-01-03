import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_app/utils/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table Desing"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child:Column(
            children: [
          //old table
              // SafeArea(
        
              //     minimum: EdgeInsets.all(12),
              //   child: Table(
              //       border: TableBorder.all(
              //         color: Colors.purple,
              //       ),
              //       columnWidths: const <int, TableColumnWidth>{
              //   0: IntrinsicColumnWidth(),
              //   1: FlexColumnWidth(),
              //   2: FixedColumnWidth(64),
              //       },
              //       defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              //       children: <TableRow>[
              //   TableRow(
              //     children: <Widget>[
              //       Container(
              //         height: 32,
              //         color: Colors.green,
              //       ),
              //       TableCell(
              //         verticalAlignment: TableCellVerticalAlignment.top,
              //         child: Container(
              //           height: 32,
              //           width: 32,
              //           color: Colors.red,
              //         ),
              //       ),
              //       Container(
              //         height: 64,
              //         color: Colors.blue,
              //       ),
              //     ],
              //   ),
              //   TableRow(
              //     decoration: const BoxDecoration(
              //       color: Colors.grey,
              //     ),
              //     children: <Widget>[
              //       Container(
              //         height: 64,
              //         width: 129,
              //         color: Colors.purple,
              //       ),
              //       Container(
              //         height: 32,
              //         color: Colors.yellow,
              //       ),
              //       Center(
              //         child: Container(
              //           height: 32,
              //           width: 32,
              //           color: Colors.orange,
              //         ),
              //       ),
              //     ],
              //   ),
              //       ],
              //     ),
              // ),
              // SizedBox(height: 50,),
      
        //new table
      
            SafeArea(
              minimum: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.all(
                  color: HEADER_COLOR,
                ),
      
                   columnWidths: const <int, TableColumnWidth>{
                0: IntrinsicColumnWidth(),
                1: FlexColumnWidth(),
                2: FixedColumnWidth(64),
                    },
                children: [
    //first row
                  TableRow(
      
                    children: [
                //Dues data column
                      TableCell(
                        child: Container(
                        height: 80,
                        width: 343,
                        child: Column(
      
                          children: [
                      //Dues data cell
                            Container(
                              height: 32,
                              width: 343,
                              color: HEADER_COLOR,
                              child: Padding(
                                padding: const EdgeInsets.only(left:20,top: 10),
                                child: Text(
                                  "Dues",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                  ),
                              ),
                            ),
                            SizedBox(height: 15,),
      
                           Padding(
                             padding: const EdgeInsets.only(left:20.0),
                             child: Row(
                              children: [
                                Text(
                                  "Previous Data",
      
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                                ),
                                SizedBox(width: 8,),
                                Text("01 January 2022",
                                style: TextStyle(
                                  // fontSize: 12,
      
                                ),
                                ),
                              ],
                             ),
                           ),
                          ],
                        ),
                        ),
                        ),
                      
                //Due cell
                      TableCell(
                        child: Container(
                          height: 78,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Due",
                               style: TextStyle(
                                fontWeight: FontWeight.bold,
                               ),
                              ),
                              SizedBox(height: 5,),
                              Text("৳20000",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          ),
                          ),
                    ],
                  ),
               
      //second row
                    TableRow(
                      
                      children: [
                  //purchase cell
                        TableCell(
                          child: Container(
                            height: 490,
                            width: 263,
                  
                            child: Table(
                              children:[
                      //purchase
                                TableRow(
                                  children: [
                                
                                    TableCell(
                                      child:Container(
                                        height: 32,
                                        width:263,
                                        color: HEADER_COLOR,
                                        child:Padding(
                                          padding: const EdgeInsets.only(left:20.0,top: 8),
                                          child: Text(
                                  "Purchase",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                  ),
                                        ),
                                        ),
                                        ),
                               
                              ]
                              ),
                      //Invoice
                             TableRow(
                                  children: [
                                
                                    TableCell(
                                      child:Container(
                                        height: 67,
                                        width:263,
                                        // color: HEADER_COLOR,
                                        child:Column(
                                          children: [
                                            Text("Invoice Date: 01 January 2022"),
                                            SizedBox(height: 8,),
                                            Text("Invoice No.:5386328")
                                          ],
                                        ),
                                        ),
                                        ),
                               
                              ])
                              ],
                              
                            ),
                          ),
                          ),
                    //second Due cell
                       TableCell(
                          child: Container(
                            height: 490,
                            width: 80,
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Due",
                               style: TextStyle(
                                fontWeight: FontWeight.bold,
                               ),
                              ),
                              SizedBox(height: 5,),
                              Text("৳30000",
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                          ),
                          ),
                      ],
                    ),
                ],
      
              ),
            ),
      
            ]
          ),
        ),
      ),
    );
    }

}