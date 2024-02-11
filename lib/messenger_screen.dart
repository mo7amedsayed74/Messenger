import 'package:flutter/material.dart';
import 'package:messenger_screen/components.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/114395937?s=400&u=f90a33c91bc00a3cad4ec25457079af2463f5154&v=4'),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.deepPurple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 16,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.deepPurple,
              radius: 16,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return buildStoryItem();
                  },
                  separatorBuilder: (context,index)=>const SizedBox(width: 5,),
                  itemCount: 10,
                ),
              ),
              ListView.separated(
                shrinkWrap: true, // ارميها كلها مره واحده
                // عندي حاجتين بيسكرولوا ف لازم اوقف حاجه منهم ف هوقف اللي ع الكولوم الصغير عشان انا عايز الكولوم الكبير هو اللي يسكرول
                controller: ScrollController(
                  keepScrollOffset: false,
                ),
                // (or) physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
                  return buildChatItem(items[index]);
                },
                separatorBuilder: (context,index)=>const SizedBox(height: 10,),
                itemCount: items.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
