import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sqfliteexample/controller/Home_screen_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  TextEditingController nameController = TextEditingController();
  TextEditingController designationController = TextEditingController();

  // For updating
  TextEditingController nameUpdateController = TextEditingController();
  TextEditingController designationUpdateController = TextEditingController();

  @override
  void initState() {
    fetchData();
    //HomeScreenController.addData();
    super.initState();
  }

  // Home Screenil data varana vere wait cheyan call cheyunnu. Await is used for waiting.
  Future<void> fetchData()
  async {
    await HomeScreenController.getData(); // Restart cheyumbol data varan.
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                child: Column(
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Name",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: designationController,
                      decoration: InputDecoration(
                        hintText: "Designation",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      onPressed: () async {
                        await HomeScreenController.addData(designation: designationController.text, name: nameController.text); // await vilichale
                        setState(() {});
                      },
                      child: Text("Add Employee"),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10),
                    itemBuilder: (context,index) => Container(
                        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                maxLines: 2,
                                "ID : ${HomeScreenController.myDataList[index]["id"]}",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                maxLines: 2,
                                "Name : ${HomeScreenController.myDataList[index]["name"]}",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                maxLines: 2,
                                "Designation : ${HomeScreenController.myDataList[index]["designation"]}",
                                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Spacer(),
                          //Edit Button
                          IconButton(onPressed: ()
                          {
                            nameUpdateController.text = HomeScreenController.myDataList[index]["name"];
                            designationUpdateController.text = HomeScreenController.myDataList[index]["designation"];

                            showDialog(context: context, builder: (context) => AlertDialog(
                              backgroundColor: Colors.blueGrey.shade100,
                              content: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 15),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min, // Alert dialogne avashyathine ulla size mathram kittaan
                                    children: [
                                      TextField(
                                        controller: nameUpdateController,
                                        decoration: InputDecoration(
                                          hintText: "Name",
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      TextField(
                                        controller: designationUpdateController,
                                        decoration: InputDecoration(
                                          hintText: "Designation",
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () async {
                                                Navigator.pop(context);
                                                setState(() {});
                                              },
                                              style: ElevatedButton.styleFrom(fixedSize: const Size(100, 50)),
                                              child: Text("Cancel"),
                                            ),
                                            SizedBox(width: 20,),
                                            ElevatedButton(
                                              onPressed: () async {
                                                await HomeScreenController.updateData(name: nameUpdateController.text, designation: designationUpdateController.text, id: HomeScreenController.myDataList[index]["id"]); // await vilichale
                                                setState(() {});
                                                Navigator.pop(context);
                                              },
                                              style: ElevatedButton.styleFrom(fixedSize: const Size(100, 50)),
                                              child: Text("Update"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ));
                          },
                              icon: Icon(Icons.edit)),
                          //Delete Button
                          IconButton(onPressed: () async {
                            await HomeScreenController.deleteData(id : HomeScreenController.myDataList[index]["id"]);
                            setState(() {

                            });
                          },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 10,),
                    itemCount: HomeScreenController.myDataList.length))
          ],
        ),
      ),

    );
  }


}
