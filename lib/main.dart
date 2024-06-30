import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/bricklink_inventory.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/bricklink_partout.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/bricklink_store.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/checkbox_form_field.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/code_generator.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/ecosystems.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/examples.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/flutter_login_form_anatomy.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/fom_engine.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/full_of_knowledge.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/input.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/lots_of_knowledge.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/qr_code_party.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/qr_linkedin.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/qr_presentation.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/qr_rfg.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rf_login_form_anatomy.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rf_macos_login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rf_ubuntu_login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rf_win_login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_beta.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_cupertino_login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_login_form_anatomy.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_login_form_anatomy2.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_material_login_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_part_out_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_partout_form_anatomy.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_partout_form_anatomy2.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_register_form.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_registration_async_validator.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_registration_form_anatomy.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/rfg_registration_form_anatomy2.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/talk_theme.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/whats_the_issue.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/where_not_to_use.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/where_to_use.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/slides/who_am_i.dart';
import 'package:flutter_deck/flutter_deck.dart';

import 'slides/bricklink_partout_items.dart';

void main() {
  runApp(const FlutterDeckExample());
}

class FlutterDeckExample extends StatelessWidget {
  const FlutterDeckExample({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterDeckCodeHighlightTheme(
      data: FlutterDeckCodeHighlightThemeData(
        textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 35,
            ),
      ),
      child: FlutterDeckApp(
        // speakerInfo: const FlutterDeckSpeakerInfo(
        //   name: 'John Doe',
        //   description: 'CEO of flutter_deck',
        //   socialHandle: '@john_doe',
        //   imagePath: 'assets/me.png',
        // ),

        configuration: const FlutterDeckConfiguration(
          // background: const FlutterDeckBackgroundConfiguration(
          //   light: FlutterDeckBackground.solid(Color(0xFFB5FFFC)),
          //   dark: FlutterDeckBackground.solid(Color(0xFF16222A)),
          // ),

          controls: FlutterDeckControlsConfiguration(
            presenterToolbarVisible: true,
            shortcuts: FlutterDeckShortcutsConfiguration(
              enabled: true,
              nextSlide: SingleActivator(LogicalKeyboardKey.arrowRight),
              previousSlide: SingleActivator(LogicalKeyboardKey.arrowLeft),
              toggleMarker: SingleActivator(LogicalKeyboardKey.keyM),
              toggleNavigationDrawer: SingleActivator(
                LogicalKeyboardKey.period,
                control: true,
                meta: true,
              ),
            ),
          ),
          footer: FlutterDeckFooterConfiguration(
            showSlideNumbers: true,
            widget: FlutterLogo(),
          ),
          header: FlutterDeckHeaderConfiguration(
            showHeader: false,
          ),
          marker: FlutterDeckMarkerConfiguration(
            color: Colors.cyan,
            strokeWidth: 8.0,
          ),
          progressIndicator: FlutterDeckProgressIndicator.gradient(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pink, Colors.purple],
            ),
            backgroundColor: Colors.black,
          ),
          // slideSize: FlutterDeckSlideSize.fromAspectRatio(
          //   aspectRatio: const FlutterDeckAspectRatio.ratio16x10(),
          //   resolution: const FlutterDeckResolution.fromWidth(1440),
          // ),

          transition: FlutterDeckTransition.fade(),
        ),
        slides: const [
          TalkTopic(),
          WhoAmI(),
          LotsOfKnowledge(),
          LoginForm(),
          FlutterLoginFormAnatomy(),
          CheckboxFormField(),
          SoWhat(),
          Ecosystems(),
          FormEngine(),
          RfLoginFormAnatomy(),
          CodeGenerator(),
          RfgLoginFormAnatomy(),
          RfgLoginFormAnatomy2(),
          RfgRegisterForm(),
          RfgRegistrationFormAnatomy(),
          RfgRegistrationAsyncValidator(),
          RfgRegistrationFormAnatomy2(),
          BrickLinkStore(),
          BrickLinkInventory(),
          BrickLinkPartout(),
          BrickLinkPartoutItems(),
          RfgPartOutForm(),
          RfgPartoutFormAnatomy(),
          RfgPartoutFormAnatomy2(),
          Input(),
          InputList(),
          RfgMaterialLoginForm(),
          RfgCUpertinoLoginForm(),
          RfgMacosLoginForm(),
          RfgWinLoginForm(),
          RfUbuntuLoginForm(),
          Examples(),
          RfgBeta(),
          RfgOutputBeta(),
          RfgOutputBetaFreezed(),
          WhereNotToUse(),
          WhereToUse(),
          FullOfKnowledge(),
          QrCodeParty(),
          QrPresentation(),
          QrLinkedin(),
          QrRfg(),
          // BrickLink(),
          // CodeHighlightSlide(),
          // FlutterDeckBulletListDemoSlide(),
          // TitleSlide(),
          // TitleSlide1(),
          // BlankSlide(),
        ],
      ),
    );
  }
}

class TitleSlide extends FlutterDeckSlideWidget {
  const TitleSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title-slide',
            title: 'Title slide',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Here goes the title of the slide',
      subtitle: 'Here goes the subtitle of the slide (optional)',
    );
  }
}

class BlankSlide extends FlutterDeckSlideWidget {
  const BlankSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/blank-slide',
            header: FlutterDeckHeaderConfiguration(
              title: 'Blank slide template',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Text('Here goes the content of the slide'),
    );
  }
}

class TitleSlide1 extends FlutterDeckSlideWidget {
  const TitleSlide1()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/title-slide1',
            title: 'Title slide',
            footer: FlutterDeckFooterConfiguration(showFooter: false),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'asdfasdfasdf',
      subtitle: '13123123123',
    );
  }
}

class FlutterDeckBulletListDemoSlide extends FlutterDeckSlideWidget {
  const FlutterDeckBulletListDemoSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/bullet-list-demo',
            title: 'Bullet list demo',
            steps: 3, // Define the number of steps for the slide
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) => FlutterDeckBulletList(
        useSteps: true, // Enable steps for the bullet list
        items: const [
          'This is a step',
          'This is another step',
          'This is a third step',
        ],
      ),
      rightBuilder: (context) => const Text('FlutterDeckBulletList demo'),
    );
  }
}

class CodeHighlightSlide extends FlutterDeckSlideWidget {
  const CodeHighlightSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code-highlight',
            header: FlutterDeckHeaderConfiguration(title: 'Code Highlighting'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return const SingleChildScrollView(
          child: FlutterDeckCodeHighlight(
            code: '''
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class CodeHighlightSlide extends FlutterDeckSlideWidget {
  const CodeHighlightSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/code-highlight',
            header: FlutterDeckHeaderConfiguration(
              title: 'Code Highlighting',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Center(
        child: Text(
          'Use FlutterDeckCodeHighlight widget to highlight code!'
        ),
      ),
    );
  }
}''',
            language: 'dart',
          ),
        );
      },
    );
  }
}
