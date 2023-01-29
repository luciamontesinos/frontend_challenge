part of frontend_challenge;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = true;
  bool _repeatPasswordVisible = true;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
    _repeatPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    String password = '';
    return Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    //constraints: BoxConstraints.tightFor(height: MediaQuery.of(context).size.height * 0.2),

                    // height: MediaQuery.of(context).size.height * 0.2,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[
                          Color.fromRGBO(242, 242, 242, 1),
                          Color.fromRGBO(242, 242, 242, 0.5),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width * 0.05,
                          left: MediaQuery.of(context).size.width * 0.05,
                          top: MediaQuery.of(context).size.height * 0.02,
                          bottom: MediaQuery.of(context).size.height * 0.01),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("assets/tonsser.png"),
                                  Text(
                                    "DISCOVER",
                                    style: discoverTextStyle,
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      constraints.maxWidth < 640
                                          ? const SizedBox.shrink()
                                          : Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                              Text(
                                                "Anders Skovgaard",
                                                style: userTextStyle,
                                              ),
                                              Text(
                                                "Huddersfield Town A.F.C.",
                                                style: clubTextStyle,
                                              ),
                                            ]),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          child: SizedBox(
                                            width: 46,
                                            height: 46,
                                            child: ClipOval(
                                              child: Image.asset("assets/profilePicture.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.arrow_back, size: 13, color: Color.fromRGBO(125, 125, 125, 1)),
                              Text("Back", style: backTextStyle),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Profile", style: titleStyle),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Wrap(
                      runSpacing: 5.0,
                      spacing: 5.0,
                      direction: constraints.maxWidth < 640 ? Axis.vertical : Axis.horizontal,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: constraints.maxWidth < 640
                              ? MediaQuery.of(context).size.width * 0.76
                              : MediaQuery.of(context).size.width * 0.24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "First name",
                                        style: formLabelStyle,
                                      ),
                                    ),
                                    TextFormField(
                                      enabled: false,
                                      style: formValueStyle,
                                      initialValue: "Anders",
                                      cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(borderSide: BorderSide.none),
                                        filled: true,
                                        fillColor: Color(0xFFF2F2F2),
                                      ),
                                      textCapitalization: TextCapitalization.sentences,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Last name",
                                      style: formLabelStyle,
                                    ),
                                  ),
                                  TextFormField(
                                    style: formValueStyle,
                                    enabled: false,
                                    initialValue: "Skovgaard",
                                    cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(borderSide: BorderSide.none),
                                      filled: true,
                                      fillColor: Color(0xFFF2F2F2),
                                    ),
                                    textCapitalization: TextCapitalization.sentences,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Club",
                                      style: formLabelStyle,
                                    ),
                                  ),
                                  TextFormField(
                                    style: formValueStyle,
                                    enabled: false,
                                    initialValue: "Huddersfield Town A.F.C.",
                                    cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(borderSide: BorderSide.none),
                                      filled: true,
                                      fillColor: Color(0xFFF2F2F2),
                                    ),
                                    textCapitalization: TextCapitalization.sentences,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Role",
                                      style: formLabelStyle,
                                    ),
                                  ),
                                  TextFormField(
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    enabled: false,
                                    style: formValueStyle,
                                    initialValue: "Scout",
                                    cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(borderSide: BorderSide.none),
                                      filled: true,
                                      fillColor: Color(0xFFF2F2F2),
                                    ),
                                    textCapitalization: TextCapitalization.sentences,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 50),
                        SizedBox(
                          width: constraints.maxWidth < 640
                              ? MediaQuery.of(context).size.width * 0.76
                              : MediaQuery.of(context).size.width * 0.24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8),
                                      child: Text(
                                        "Bio",
                                        style: formLabelStyle,
                                      ),
                                    ),
                                    TextFormField(
                                      autovalidateMode: AutovalidateMode.onUserInteraction,
                                      style: formValueStyle,
                                      maxLines: 7,
                                      cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                      // validator: (value) {
                                      //   if (value == null || value.isEmpty) {
                                      //     return 'Please enter some text';
                                      //   }
                                      //   if (value.contains(RegExp(r'[0-9]'))) {
                                      //     return 'Please introduce a valid character';
                                      //   } else {
                                      //     return null;
                                      //   }
                                      // },
                                      decoration: const InputDecoration(
                                        hintText: "Write about your profile as a football scout...",
                                        border: OutlineInputBorder(),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                                        filled: false,
                                        focusColor: Color(0xFFDBDBDB),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0XFF4A4A4A)),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xFFDBDBDB)),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF4343),
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFFF4343),
                                          ),
                                        ),
                                      ),
                                      textCapitalization: TextCapitalization.sentences,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "New password",
                                      style: formLabelStyle,
                                    ),
                                  ),
                                  TextFormField(
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    obscureText: !_passwordVisible,
                                    style: formValueStyle,
                                    cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return null;
                                      }

                                      if (!value.contains(
                                          RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"))) {
                                        return 'The new password MUST contain at least: eight characters, an uppercase letter, a lowercase letter and a number';
                                      } else {
                                        password = value;
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      errorMaxLines: 3,
                                      border: const OutlineInputBorder(),
                                      filled: false,
                                      focusColor: const Color(0xFFDBDBDB),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0XFF4A4A4A)),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xFFDBDBDB)),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF4343),
                                        ),
                                      ),
                                      focusedErrorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF4343),
                                        ),
                                      ),
                                      suffixIcon: IconButton(
                                        splashRadius: 0.1,
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _passwordVisible ? Icons.visibility : Icons.visibility_off,
                                        ),
                                        color: const Color(0xFFDBDBDB),
                                        enableFeedback: false,
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _passwordVisible = !_passwordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Text(
                                      "Repeat new password",
                                      style: formLabelStyle,
                                    ),
                                  ),
                                  TextFormField(
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    obscureText: !_repeatPasswordVisible,
                                    style: formValueStyle,
                                    initialValue: "",
                                    cursorColor: const Color.fromRGBO(125, 125, 125, 1),
                                    validator: (value) {
                                      // if (value == null || value.isEmpty) {
                                      //   return 'Please enter some text';
                                      // }
                                      // if (!value
                                      //     .contains(RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"))) {
                                      //   return 'Please introduce a valid character';
                                      // }
                                      if (value != password) {
                                        return 'Passwords do not match';
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      filled: false,
                                      focusColor: const Color(0xFFDBDBDB),
                                      focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0XFF4A4A4A)),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(color: Color(0xFFDBDBDB)),
                                      ),
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF4343),
                                        ),
                                      ),
                                      focusedErrorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF4343),
                                        ),
                                      ),
                                      suffixIcon: IconButton(
                                        splashRadius: 0.1,
                                        icon: Icon(
                                          // Based on passwordVisible state choose the icon
                                          _repeatPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                        ),
                                        color: const Color(0xFFDBDBDB),
                                        enableFeedback: false,
                                        onPressed: () {
                                          // Update the state i.e. toogle the state of passwordVisible variable
                                          setState(() {
                                            _repeatPasswordVisible = !_repeatPasswordVisible;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              ButtonBar(
                                // buttonMinWidth: 168,
                                buttonHeight: 40,
                                overflowButtonSpacing: 10,
                                alignment: MainAxisAlignment.spaceBetween,
                                buttonPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                                children: [
                                  OutlinedButton(
                                    style: outlinedButtonThemeData.style,
                                    child: const Text('CANCEL'),
                                    onPressed: () {
                                      _formKey.currentState!.reset();
                                    },
                                  ),
                                  ElevatedButton(
                                    style: elevatedButtonThemeData.style,
                                    child: const Text('SAVE'),
                                    onPressed: () {
                                      _formKey.currentState!.validate()
                                          ? showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) => Align(
                                                child: AlertDialog(
                                                  backgroundColor: Colors.white,
                                                  alignment: Alignment.center,
                                                  content: Row(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      const Icon(
                                                        Icons.check_circle,
                                                        color: Color(0xFF00DC96),
                                                      ),
                                                      Text(
                                                        'Changes have been successfully saved!',
                                                        style: formLabelStyle,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          : null;
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
