import 'package:roman_web_portfolio/features/welcome/data/models/welcome_page.model.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/iwelcome.repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {
  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return WelcomePageModel(
          name: 'Fathi',
          title: 'Flutter GDE',
          subTitle: 'Certified Cloud Architect',
          imgPath: 'https://drive.google.com/drive/my-drive',
          greetings: ["Hello", "Hola", "Bonjour", "Ciao"]);
    });
  }
}
