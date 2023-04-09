import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text("WhatsApp"),
            bottom: const TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ]),
            actions: [
              const Icon(Icons.search),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: 1, child: Text("New Group")),
                        PopupMenuItem(value: 2, child: Text("Settings")),
                        PopupMenuItem(value: 3, child: Text("Log Out")),
                      ]
              ),
            ],
          ),
          body: TabBarView(children: [
            const Center(child: Icon(Icons.camera_alt),),
            ListView.builder(
              itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://yt3.googleusercontent.com/xIPexCvioEFPIq_nuEOOsv129614S3K-AblTK2P1L9GvVIZ6wmhz7VyCT-aENMZfCzXU-qUpaA=s900-c-k-c0x00ffffff-no-rj'),
                    ),
                    title: Text("John"),
                    subtitle: Text("Hello"),
                    trailing: Text("6:26 PM"),
                  );
                }
            ),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  if (index == 0){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(

                              color: Colors.grey[200]
                            ),
                            padding: EdgeInsets.only(top: 5,bottom: 5),
                            child: Row(
                              children: [
                                SizedBox(width: 10,),
                                Text("Recent updates",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage('https://yt3.googleusercontent.com/xIPexCvioEFPIq_nuEOOsv129614S3K-AblTK2P1L9GvVIZ6wmhz7VyCT-aENMZfCzXU-qUpaA=s900-c-k-c0x00ffffff-no-rj'),
                            ),
                            title: Text("John"),
                            subtitle: Text("Hello"),
                            trailing: Text("6:26 PM"),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://yt3.googleusercontent.com/xIPexCvioEFPIq_nuEOOsv129614S3K-AblTK2P1L9GvVIZ6wmhz7VyCT-aENMZfCzXU-qUpaA=s900-c-k-c0x00ffffff-no-rj'),
                      ),
                      title: Text("John"),
                      subtitle: Text("Hello"),
                      trailing: Text("6:26 PM"),
                    );
                  }

                }
            ),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.teal,
                            width: 2,
                          )
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://yt3.googleusercontent.com/xIPexCvioEFPIq_nuEOOsv129614S3K-AblTK2P1L9GvVIZ6wmhz7VyCT-aENMZfCzXU-qUpaA=s900-c-k-c0x00ffffff-no-rj'),
                      ),
                    ),
                    title: Text("John"),
                    subtitle: Text(index /2 == 0 ? "you missed a audio call" : "12 minutes ago"),
                    trailing: Icon(index /2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }

            ),
          ]),
        ));
  }
}
