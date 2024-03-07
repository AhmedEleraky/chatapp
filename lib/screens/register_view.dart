import 'package:chatapp/screens/contacts_view.dart';
import 'package:chatapp/screens/login_view.dart';
import 'package:chatapp/widgets/app_colors.dart';
import 'package:chatapp/widgets/custom_button.dart';
import 'package:chatapp/widgets/text_formfield.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _LogiInViewState();
}

class _LogiInViewState extends State<RegisterView> {
  bool isNotvisible = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage(
                    'assets/chatapp.jpg',
                  ),
                ),
                Text(
                  'Create an Account',
                  style: TextStyle(
                      color: AppColors.iconButton,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextFormField(
                    hintText: 'Name', prefixIcon: Icons.person),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                    hintText: 'Enter Your Email',
                    prefixIcon: Icons.email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  hintText: 'Enter Your Password',
                  prefixIcon: Icons.lock,
                  obscureText: isNotvisible,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isNotvisible = !isNotvisible;
                        });
                      },
                      icon: Icon((isNotvisible
                          ? Icons.visibility_off
                          : Icons.visibility))),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                    text: 'Register',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const ContactsView(),
                        ));
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('If you do not have an account'),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const LogiInView(),
                            ));
                          });
                        },
                        child: const Text('Lonin Now!')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
