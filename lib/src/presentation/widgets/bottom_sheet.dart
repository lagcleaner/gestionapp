import 'package:flutter/material.dart';
import 'package:gestionuh/deps_injector.dart';
import 'package:gestionuh/src/data/repository.dart';
import 'package:gestionuh/src/utils/constants.dart';

class GestionUHBottomSheet extends StatelessWidget {
  const GestionUHBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 3),
      child: Center(
        heightFactor: 2.2,
        child: FutureBuilder<String>(
          future: di<VersionRepository>().getVersion(),
          builder: (context, snapshot) {
            final textSpans = [
              TextSpan(text: '\u00a9 ${DateTime.now().year}'),
            ];
            if (snapshot.hasData) {
              textSpans.addAll([
                const TextSpan(text: ' '),
                TextSpan(
                  text: '${Constants.appName} v${snapshot.data}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 11,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ]);
            }
            return RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 11),
                children: textSpans,
              ),
              textAlign: TextAlign.center,
            );
          },
        ),
      ),
    );
  }
}