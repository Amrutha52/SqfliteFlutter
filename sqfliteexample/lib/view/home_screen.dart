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

  @override
  void initState() {
    fetchData();
    //HomeScreenController.addData();
    super.initState();
  }

  Future<void> fetchData()
  async {
    await HomeScreenController.getData();
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
                      onPressed: () {
                        HomeScreenController.addData(designation: designationController.text, name: nameController.text);
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
                          IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
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
