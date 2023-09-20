import 'package:flutter/material.dart';
import 'package:watsapp/core/colors/colors.dart';
import 'package:watsapp/widgets/custom_icon_button.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
              mainAxisSize: MainAxisSize
                  .min, //takes up height/space required for its children only.
              children: [
                Container(
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(children: [
                  CustomIconButton(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icons.close_outlined,
                  ),
                  const SizedBox(width: 10.0),
                  const Text(
                    'App Language',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ]),
                const SizedBox(height: 10.0),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                  thickness: .5,
                ),
                RadioListTile(
                  value: true,
                  groupValue: true,
                  onChanged: (value) {},
                  title: const Text('English'),
                  subtitle: const Text(
                    "(phone's language)",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                RadioListTile(
                  value: true,
                  groupValue: false,
                  onChanged: (value) {},
                  title: const Text('አማርኛ'),
                  subtitle: const Text(
                    "Amharic",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ]),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF182229),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context), //A built in method.
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        // highlightColor: context.theme.langButtonHighlightColor,
        highlightColor: Colors.amber,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              Icons.language,
              color: AppColors.greenDark,
            ),
            SizedBox(width: 10.0),
            Text(
              'English',
              style: TextStyle(
                color: AppColors.greenDark,
              ),
            ),
            SizedBox(width: 10.0),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.greenDark,
            )
          ]),
        ),
      ),
    );
  }
}
