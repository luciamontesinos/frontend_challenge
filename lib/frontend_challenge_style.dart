part of frontend_challenge;

TextStyle discoverTextStyle = const TextStyle(
    fontFamily: "SF Pro Text",
    fontSize: 21,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: Color(0xFF0e0e0e));
TextStyle titleStyle = const TextStyle(
    fontFamily: "SF Pro Text", fontSize: 34, fontWeight: FontWeight.w700, color: Color(0xFF252525));
TextStyle formLabelStyle = const TextStyle(
    fontFamily: "SF Pro Text", fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF7d7d7d));
TextStyle formValueStyle = const TextStyle(
    fontFamily: "SF Pro Text", fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xFF252525));
TextStyle buttonTextStyle =
    const TextStyle(fontFamily: "SF Pro Text", fontSize: 16, fontWeight: FontWeight.w700);
TextStyle backTextStyle = const TextStyle(
    fontFamily: "SF Pro Text", fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF7d7d7d));
TextStyle clubTextStyle = const TextStyle(
    fontFamily: "SF Pro Text", fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFF7d7d7d));
TextStyle userTextStyle = const TextStyle(
    fontFamily: "SF Pro Text", fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xFF444444));

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    foregroundColor: const Color(0XFF0E0E0E),
    backgroundColor: const Color(0xFF00FFC8),
    disabledBackgroundColor: const Color.fromARGB(100, 0, 255, 200),
    textStyle: buttonTextStyle,
    minimumSize: const Size(84, 40),
    maximumSize: const Size(168, 40),
    // padding: const EdgeInsets.symmetric(vertical: 5.7, horizontal: 14.1),
    fixedSize: const Size(168, 40),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  foregroundColor: const Color(0xFF444444),
  disabledBackgroundColor: const Color.fromARGB(100, 68, 68, 68),
  textStyle: buttonTextStyle,
  minimumSize: const Size(84, 40),
  maximumSize: const Size(168, 40),
  // padding: const EdgeInsets.symmetric(vertical: 5.7, horizontal: 14.1),
  fixedSize: const Size(168, 40),
));
