import 'package:chatapp/widgets/app_colors.dart';
import 'package:chatapp/widgets/text_formfield.dart';
import 'package:chatapp/widgets/user_model.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key, required this.chat});

  UserModel chat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            title: Center(
              child: Text(
                chat.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz_outlined),
                color: Colors.white,
              ),
            ]),
        body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(chat.time),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(chat.contactImage),
                    ),
                    title: Container(
                      height: 70,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 223, 217, 217),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          chat.lastMsg,
                          style: const TextStyle(fontSize: 23),
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                CustomTextFormField(
                  hintText: '',
                  suffixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.send)),
                )
              ],
            ),
          ),
        ));
  }
}
