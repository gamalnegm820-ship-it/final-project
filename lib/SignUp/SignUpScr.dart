import 'package:finalporoject/SignUp/SignUp_Cubit.dart';
import 'package:finalporoject/SignUp/SignUp_state.dart';
import 'package:finalporoject/logn%20screen/loginscr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Signupscr extends StatelessWidget {
  const Signupscr({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<SignupCubit, SignupState>(
          listener: (context, state) {
            if (state is SignUpSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Created Email Success',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }
            if (state is SignUpFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    state.errMsg,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }

            // TODO: implement listener
          },
          builder: (context, state) {
            final cubit = context.read<SignupCubit>();
            if (state is SignUpLoading) {
              return Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    SizedBox(height: 70),
                    Image.asset(
                      'assets/images/Screenshot 2026-09-07 181336.png',
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Email ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    TextFormField(
                      controller: cubit.emailControl,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3669C9)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3669C9)),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter Your Email",
                      ),
                    ),
                    SizedBox(height: 10),

                    Text(
                      'Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    TextFormField(
                      controller: cubit.passwordControl,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off_outlined),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3669C9)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3669C9)),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '******',
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Confirm Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_off_outlined),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3669C9)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff3669C9)),
                        ),
                        filled: true,
                        fillColor: Colors.white,

                        hintText: '******',
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        cubit.SignUp();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6055D8),
                        fixedSize: Size.fromHeight(50),
                      ),

                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff808080),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => loginscr()),
                          ),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
