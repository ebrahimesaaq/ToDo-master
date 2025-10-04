import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'homeAppBar': 'الصفحة الرئيسية',
          'language': 'العربية',
          'OBOneTitle': 'إدارة مهامك',
          'OBTowTitle': 'نظم حياتك',
          'OBThreeTitle': 'حقق أهدافك',
          'OBOneBody': 'يمكنك إدارة\n مهامك بسهولة معنا',
          'OBTowBody':
              'قم بإدارة مهامك اليومية والشهرية والسنوية بسهولة مع ToDo Master.',
          'OBThreeBody': 'ابقَ مركزًا وحقق أهدافك مع ToDo Master.',
        },
        'en': {
          'homeAppBar': 'Home Page',
          'language': 'English',
          'OBOneTitle': 'Manage Your Task',
          'OBTowTitle': 'Organize Your Life',
          'OBThreeTitle': 'Achieve Your Goals',
          'OBOneBody': 'You can manage\n your task easily with us',
          'OBTowBody':
              'Effortlessly manage your daily, monthly, and \n yearly tasks with ToDo Master.',
          'OBThreeBody':
              'Stay focused and achieve your goals with \n ToDo Master.',
        },
      };
}
