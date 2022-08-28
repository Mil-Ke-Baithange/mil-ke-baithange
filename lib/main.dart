import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart' show Firebase;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:voip_chat/common/utils/colors.dart';
import 'package:voip_chat/common/widgets/error.dart';
import 'package:voip_chat/common/widgets/loader.dart';
import 'package:voip_chat/features/auth/controller/auth_controller.dart';
import 'package:voip_chat/features/home/screens/home_screen.dart';
import 'package:voip_chat/features/landing/landing_screen.dart';
import 'package:voip_chat/router.dart' show generateRoute;
import 'firebase_options.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mil k Baithange',
      onGenerateRoute: (settings) => generateRoute(settings),
      home: ref.watch(userdataAuthProvider).when(data: (user) {
        if (user == null) return const LandingScreen();
        return const HomeScreen();
      }, error: (error, trace) {
        return ErrorScreen(
          error: error.toString(),
        );
      }, loading: () {
        return const Loader();
      }),
    );
  }
}
