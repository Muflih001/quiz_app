import 'package:flutter/material.dart';
import 'package:quiz_app/utils/constants/colorConstatns.dart';

class optionCard extends StatelessWidget {
  const optionCard({
    super.key,
    required this.optionText,
    required this.isSelected,
    required this.onTap,
    required this.isCorrect,
  });
  final String optionText;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isCorrect
                  ? Colors.green
                  : isSelected
                      ? Colors.red
                      : Colors.grey,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 336,
                  child: Text(
                    optionText,
                    style: TextStyle(
                        fontSize: 20,
                        color: isSelected && isCorrect
                            ? Colors.green
                            : AppColors.textColor),
                  ),
                ),
                Icon(
                  isSelected
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off,
                  color: isSelected && isCorrect ? Colors.green : Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
