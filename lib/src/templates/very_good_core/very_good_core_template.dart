import 'package:mason/mason.dart';
import 'package:universal_io/io.dart';
import 'package:very_good_cli/src/templates/templates.dart';

/// {@template very_good_core_template}
/// A core Flutter app template.
/// {@endtemplate}
class VeryGoodCoreTemplate extends Template {
  /// {@macro very_good_core_template}
  VeryGoodCoreTemplate()
      : super(
          name: 'core',
          bundle: veryGoodCoreBundle,
          help: 'Generate a Boilerplate Flutter application.',
        );

  @override
  Future<void> onGenerateComplete(Logger logger, Directory outputDir) async {
    await installFlutterPackages(logger, outputDir);
    await applyDartFixes(logger, outputDir);
    _logSummary(logger);
  }

  void _logSummary(Logger logger) {
    logger
      ..info('\n')
      ..alert('Yay! Generated boilerplate!');
  }
}
