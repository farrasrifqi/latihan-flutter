import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,40,16,0),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Notes', style: TextStyle(fontSize: 30, color: Colors.white),),

                IconButton(onPressed: () {},
                padding: EdgeInsets.all(0),
                icon: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.grey.shade800.withOpacity(.8),
                  borderRadius: BorderRadius.circular(10)),
                  child: const Icon
                  (Icons.sort, color: Colors.white,
                  ),
                 ))
              ],
            ),
            
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                 hintText: "Search Notes....",
                 hintStyle: TextStyle(color: Colors.grey),

                prefixIcon: const Icon(
                  Icons.search, 
                  color: Colors.grey,
                ),

                fillColor: Colors.grey.shade800,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.transparent))
              ),
            ),

          ],
        ),
      ),

    );
  }
}