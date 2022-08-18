import 'package:flutter/material.dart';
import 'package:ta_rides_final/screens/map_screen.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Christian.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                TextFieldWidget(textFieldName: 'First Name'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Last Name'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Birth Date'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Gender'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Phone Number'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Email Address'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Location'),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(textFieldName: 'Current Weight'),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      primary: const Color(0xFF35B73A),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String textFieldName;
  const TextFieldWidget({
    Key? key,
    required this.textFieldName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 10),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: textFieldName,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
