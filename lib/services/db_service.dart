import 'package:hive/hive.dart';
class DbService { static Box getFaqBox() => Hive.box('vitalcare_faq'); static Box getUserBox() => Hive.box('vitalcare_user'); static Box getRemindersBox() => Hive.box('vitalcare_reminders'); }
