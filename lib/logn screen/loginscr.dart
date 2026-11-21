import 'package:finalporoject/SignUp/SignUpScr.dart';
import 'package:finalporoject/logn%20screen/login_cubit.dart';
import 'package:finalporoject/logn%20screen/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../NAv/Nav_screen.dart';

class loginscr extends StatelessWidget {
  const loginscr({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text(
                    'Login Success',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Navscreen()),
              );
            }
            if (state is LoginFailure) {
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
            final cubit =context.read<LoginCubit>();
            if(state is LoginLoading){
              return Center(child: CircularProgressIndicator(),);
            }

            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 100),
                  Image.asset('assets/images/Screenshot 2026-09-07 181336.png'),
                  SizedBox(height: 50),
                  Text(
                    "User Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                    controller: cubit.emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3669C9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3669C9)),
                      ),

                      hintText: 'User Name',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  TextFormField(
                    controller: cubit.passwordController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3669C9)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff3669C9)),
                      ),
                      hintText: 'Enter Your Password',
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('Forget Password?')],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {cubit.Login();
                      


                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff6055D8),
                      fixedSize: Size.fromHeight(50),
                    ),

                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don’t  have an account? '),

                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Signupscr(),)
                            ),
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
