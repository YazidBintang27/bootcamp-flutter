import 'package:flutter/material.dart';
import 'package:sanber_app_flutter/Tugas/Tugas12/model/data_response.dart';
import 'package:sanber_app_flutter/Tugas/Tugas12/services/api_service.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  DataResponse dataResponse = DataResponse();
  late Future<List<DataResponse>> users;
  
  @override
  void initState() {
    users = ApiService.getListUsers();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sanber App",
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: FutureBuilder(
          future: users,
          builder: (context, snapshot) {
            if(snapshot.hasError) {
              return Center(child: Text("${snapshot.error}"),);
            } else if(snapshot.hasData) {
              List <DataResponse> data = snapshot.data!;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ListTile(
                      tileColor: Colors.blue[100],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: NetworkImage(data[index].avatar!),
                          fit: BoxFit.cover,
                          width: 60,
                          height: 70,
                        ),
                      ),
                      title: Text("${data[index].firstName} ${data[index].lastName}"),
                      subtitle: Text("${data[index].email}"),
                      trailing: Text("${data[index].id}"),
                    ),
                  );
                }
              );
            } else {
              return const Center(child: CircularProgressIndicator(),);
            }
          },
        ),
      ),
    );
  }
}
