// ignore_for_file: file_names

class CountryModel {
  String? title;
  String? assetImage;

  CountryModel(this.title, this.assetImage);
}

class LocationCountryHelper {
  static final List<CountryModel> locationCountries = <CountryModel>[
    CountryModel("Argentina", "Assets/Images/Flags/Argentina.png"),
    CountryModel("Brazil", "Assets/Images/Flags/Brazil.png"),
    CountryModel("Canada", "Assets/Images/Flags/Canada.png"),
    CountryModel("China", "Assets/Images/Flags/China.png"),
    CountryModel("India", "Assets/Images/Flags/India.png"),
    CountryModel("Indonesia", "Assets/Images/Flags/Indonesia.png"),
    CountryModel("Malaysia", "Assets/Images/Flags/Malaysia.png"),
    CountryModel("Philippines", "Assets/Images/Flags/Philiphines.png"),
    CountryModel("Poland", "Assets/Images/Flags/Polandia.png"),
    CountryModel("Saudi Arabia", "Assets/Images/Flags/Saudi_Arabia.png"),
    CountryModel("Singapore", "Assets/Images/Flags/Singapore.png"),
    CountryModel("United States", "Assets/Images/Flags/United_States.png"),
    CountryModel("Vietnam", "Assets/Images/Flags/Vietnam.png"),
  ];

  static CountryModel locationCountry(int index) => locationCountries.elementAt(index);
}
