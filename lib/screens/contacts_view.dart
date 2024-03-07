import 'package:chatapp/screens/chat_view.dart';
import 'package:chatapp/widgets/app_colors.dart';
import 'package:chatapp/widgets/favorite_contacts.dart';
import 'package:chatapp/widgets/user_model.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text(
            'Chats',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              color: Colors.white,
            ),
          ]),
      body: Column(
        children: [
          const FavoriteContacts(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: ListView.separated(
                  padding: const EdgeInsets.all(15),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(chat[index].contactImage),
                      ),
                      title: Text(
                        chat[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        chat[index].lastMsg,
                      ),
                      trailing: Text(chat[index].time),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChatView(
                            chat: chat[index],
                          ),
                        ));
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: chat.length),
            ),
          ),
        ],
      ),
    );
  }
}
