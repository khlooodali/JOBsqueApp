import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class GetCountryPicker extends StatelessWidget {
  const GetCountryPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return CountryCodePicker(
      onInit: (code) => debugPrint("on init ${code!.name} ${code.dialCode}"),
      onChanged: (element) => debugPrint(element.toLongString()),
      initialSelection: '+231',
      favorite: const ['+39', 'FR'],
      showCountryOnly: false,
      showOnlyCountryWhenClosed: false,
      alignLeft: false,
      showDropDownButton: true,
      flagWidth: 24,
      hideMainText: true,
      flagDecoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(2))),
    );
  }
}
