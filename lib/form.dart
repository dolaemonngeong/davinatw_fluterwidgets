import 'package:davinatw_fluterwidgets/assignment1.dart';
import 'package:email_validator/email_validator.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _bookingKey = GlobalKey<FormState>();
  final ctrlFullName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  bool isHide = true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Page"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(16),
        child: Form(
          key: _bookingKey,
          child: Column(
            children: [
              TextFormField(
                controller: ctrlFullName,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person)
                ),
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Full Name cannot be empty';
                    }
                    // Add more validation logic here if needed
                    return null;
                  },
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: ctrlEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)
                ),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if (value == null || value.isEmpty) {
                    return 'Email cannot be empty';
                  }
                  return !EmailValidator.validate(value) ? 'Email tidak valid!' : null;
                },

              ),

              const SizedBox(height: 24),

              TextFormField(
                controller: ctrlPhone,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone)
                  ),
                  
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone cannot be empty';
                    }
                    // Regex for validating phone number, you can adjust this regex as per your requirement
                    String pattern = r'^(?:[+0]9)?[0-9]{13}$';
                    RegExp regex = new RegExp(pattern);
                    if (!regex.hasMatch(value)) {
                      return 'Enter valid phone number';
                    }
                    return null;
                  },
                ),

              const SizedBox(height: 24),

              TextFormField(
                controller: ctrlCity,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(
                  labelText: "City",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.location_city)
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'City cannot be empty';
                    }
                    // Add more validation logic here if needed
                    return null;
                  },
                ),

                const SizedBox(height: 24),

              ElevatedButton.icon(
                onPressed: () {
                  if (_bookingKey.currentState!.validate()) {
                    // All fields are valid
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('All Fields Valid'),
                        content: Text(
                          'Full Name: ${ctrlFullName.text}\n'
                          'Email: ${ctrlEmail.text}\n'
                          'Phone: ${ctrlPhone.text}\n'
                          'City: ${ctrlCity.text}'
                        ),
                        actions: <Widget>[
                          TextButton(
                            onPressed: ()  {
                              Navigator.pop(context, 'OK');
                              Navigator.pop(context, 'OK');

                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    // Some fields are empty
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Fields Missing'),
                        content: const Text('Please fill in all the fields.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: ()  {
                              Navigator.pop(context, 'OK');
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                icon: Icon(Icons.save),
                label: Text("Book Now"),
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 20
                  )
                ),
                // ... (rest of your ElevatedButton code)
              ),

            ],
          ),
        ),
      ),
    );
  }
}