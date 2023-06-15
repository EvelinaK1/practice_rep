import 'package:flutter/material.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {

  bool defindFlow = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).previousFocus(),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 248, 251, 1),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Авторизация',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: const Color.fromRGBO(246, 248, 251, 1),
          automaticallyImplyLeading: true,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: (){},
              child: const Text(
                'Помощь',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 95,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 220,
                      ),
                      height: 40,
                      decoration: BoxDecoration(
                        color: defindFlow == false ? const Color.fromRGBO(10, 106, 219, 0.15) : Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: const Color.fromRGBO(10, 106, 219, 0.15),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          onTap: defindFlow == true ? (){
                            setState(() {
                              defindFlow = false;
                            });
                          } : null,
                          child: Center(
                            child: Text(
                              'Номер телефона',
                              style: TextStyle(
                                color: defindFlow == false ? const Color.fromRGBO(19, 109, 236, 1) : Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: AnimatedContainer(
                      duration: const Duration(
                        milliseconds: 220,
                      ),
                      height: 40,
                      decoration: BoxDecoration(
                        color: defindFlow == true ? const Color.fromRGBO(10, 106, 219, 0.15) : Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: const Color.fromRGBO(10, 106, 219, 0.15),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12),
                          ),
                          onTap: defindFlow == false ? (){
                            setState(() {
                              defindFlow = true;
                            });
                          } : null,
                          child: Center(
                            child: Text(
                              'Почта',
                              style: TextStyle(
                                color: defindFlow == true ? const Color.fromRGBO(19, 109, 236, 1) : Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              defindFlow == false ?
              TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(183, 190, 200, 0.3),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                  hintText: 'Введите номер телефона',
                ),
              ) :
              Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(183, 190, 200, 0.3),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                      hintText: 'Введите почту',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(183, 190, 200, 0.3),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                      hintText: 'Введите пароль',
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(19, 109, 236, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: const Color.fromRGBO(19, 109, 236, 1),
                    onTap: (){},
                    child: const Center(
                      child: Text(
                        'Дальше',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
