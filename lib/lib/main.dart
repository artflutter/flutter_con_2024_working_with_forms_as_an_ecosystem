import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/animated_url_list/url_list_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/annotateless/annotateless_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/array_nullable/array_nullable_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/delivery_list/delivery_point_route_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/delivery_list/delivery_route_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/freezed/freezed_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/generic/generic_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/group/group_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/login/login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/login/login_output_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/login_extended/login_extended_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/login_extended_nullable/login_extended_nullable_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/mailing_list/mailing_list_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/model_extends/model_extends_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/model_implements/model_implements_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/nested/nested_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/user_profile/user_profile_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        Routes.loginExtended: (_) => const LoginExtendedFormWidget(),
        Routes.login: (_) => const LoginFormWidget(),
        Routes.loginOutput: (_) => const LoginOutputFormWidget(),
        Routes.annotateless: (_) => const AnnotatelessFormWidget(),
        Routes.mailingList: (_) => const MailingListFormWidget(),
        Routes.userProfile: (_) => const UserProfileFormWidget(),
        Routes.loginExtendedNullable: (_) =>
            const LoginExtendedNullableFormWidget(),
        Routes.arrayNullable: (_) => const ArrayNullableFormWidget(),
        Routes.group: (_) => const GroupFormWidget(),
        Routes.deliveryList: (_) => const DeliveryListFormWidget(),
        Routes.deliveryPoint: (_) => const DeliveryPointWidget(),
        Routes.freezed: (_) => const FreezedFormWidget(),
        Routes.generic: (_) => const GenericFormWidget(),
        Routes.animatedUrlList: (_) => const UrlListForm(),
        Routes.modelExtends: (_) => const ModelExtendsWidget(),
        Routes.modelImplements: (_) => const ModelImplementsWidget(),
        Routes.nested: (_) => const NestedFormWidget(),
      },
      home: const UrlListForm(),
    );
  }
}

class Routes {
  static const loginExtended = '/login-extended';

  static const login = '/login';

  static const loginOutput = '/login-output';

  static const annotateless = '/annotateless';

  static const mailingList = '/mailing-list';

  static const userProfile = '/user-profile';

  static const group = '/group';

  static const deliveryList = '/delivery-list';

  static const deliveryPoint = '/delivery-point';

  static const loginExtendedNullable = '/login-extended-nullable';

  static const arrayNullable = '/array-nullable';

  static const freezed = '/freezed';

  static const generic = '/generic';

  static const animatedUrlList = '/animated-url-list';

  static const modelExtends = '/model-extends';

  static const modelImplements = '/model-implements';

  static const nested = '/nested';
}
