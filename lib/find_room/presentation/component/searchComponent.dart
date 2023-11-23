import 'package:flutter/material.dart';
import 'package:safar/find_room/data/datacourse/room_data.dart';
import 'package:safar/find_room/presentation/component/button_component.dart';
import 'package:safar/find_room/presentation/component/dialog_component.dart';
import 'package:safar/find_room/presentation/component/switch_button_component.dart';
import 'package:safar/find_room/presentation/component/date_time_component.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({super.key});

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  static const List<String> countryName = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'Brunei',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cabo Verde',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Central African Republic',
    'Chad',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Congo',
    'Costa Rica',
    'Croatia',
    'Cuba',
    'Cyprus',
    'Czechia',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Eswatini',
    'Ethiopia',
    'Fiji',
    'Finland',
    'France',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Greece',
    'Grenada',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Israel',
    'Italy',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Korea, North',
    'Korea, South',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Marshall Islands',
    'Mauritania',
    'Mauritius',
    'Mexico',
    'Micronesia',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Macedonia',
    'Norway',
    'Oman',
    'Pakistan',
    'Palau',
    'Palestine',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Poland',
    'Portugal',
    'Qatar',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Vincent and the Grenadines',
    'Samoa',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovakia',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Timor-Leste',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
  ];
  RoomData roomData = RoomData();
  DateTime? checkInController;
  DateTime? checkOutController;
  int currentYear = DateTime.now().year;

  // change to string

  Future checkInFunction() async {
    checkInController = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(currentYear),
        lastDate: DateTime(currentYear + 5));
    setState(() {});
  }

  Future checkOutFunction() async {
    checkOutController = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime(2030));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //  height: MediaQuery.of(context).size.height*.75 ,
      margin: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: ListView(
        physics:const NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    roomData.setPlacementType = 'hotels';
                    setState(() {});
                  },
                  child: SwitchButtonComponent(
                      title: 'Hotels',
                      left: true,
                      active:
                          roomData.getPlacementType == 'hotels' ? true : false),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    roomData.setPlacementType = 'villas';
                    setState(() {});
                  },
                  child: SwitchButtonComponent(
                    title: 'Villas',
                    left: false,
                    active:
                        roomData.getPlacementType == 'villas' ? true : false,
                  ),
                ),
              ),
            ],
          ), // Hotels and villas button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text == '') {
                      return const Iterable<String>.empty();
                    }
                    return countryName.where((String option) {
                      return option
                          .toLowerCase()
                          .contains(textEditingValue.text.toLowerCase());
                    });
                  },
                  onSelected: (String selection) {
                    debugPrint('You just selected $selection');
                    roomData.setLocation = selection;
                  },
                  fieldViewBuilder: (context, textEditingController, focusNode,
                      onFieldSubmitted) {
                    return TextField(
                      controller: textEditingController,
                      focusNode: focusNode,
                      decoration: const InputDecoration(
                        border:
                            UnderlineInputBorder(borderSide: BorderSide.none),
                        hintText: '    Where do you want',
                        icon: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff0090ff),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ), // where do you want
          const Divider(
            thickness: 2,
          ),
          InkWell(
            onTap: checkInFunction,
            child: DataTimeComponent(
              title: checkInController == null
                  ? 'CheckIn data & time'
                  : 'CheckIn : ${checkInController!.year} - ${checkInController!.month} - ${checkInController!.day}',
            ),
          ), // check in
          InkWell(
            onTap: checkOutFunction,
            child: DataTimeComponent(
              title: checkOutController == null
                  ? 'CheckOut data & time'
                  : 'CheckOut : ${checkOutController!.year} - ${checkOutController!.month} - ${checkOutController!.day}',
            ),
          ), // checkout
          ListTile(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => DialogComponent(
                  data: roomData,
                ),
              ).then((value) => setState(() {}));
            },
            title: Text(
                '${roomData.getAdults} Adults.  ${roomData.getChildren} Children.  ${roomData.getRooms} room.'),
            leading: const Icon(
              Icons.business_rounded,
              color: Color(0xff0090ff),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 32,
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                  value: 'Fan',
                  groupValue: roomData.getVent,
                  onChanged: (value) {
                    roomData.setVent = value!;
                    setState(() {});
                  },
                  title: Text(
                    'Fan',
                    style: TextStyle(
                        fontSize: 18,
                        color: roomData.getVent == 'Fan'
                            ? Colors.black
                            : Colors.grey),
                  ),
                ),
              ),
              Expanded(
                child: RadioListTile(
                  value: 'Air Conditioned',
                  groupValue: roomData.getVent,
                  onChanged: (value) {
                    roomData.setVent = value!;
                    setState(() {});
                  },
                  title: Text(
                    'Air Conditioned',
                    style: TextStyle(
                        fontSize: 16,
                        color: roomData.getVent == 'Air Conditioned'
                            ? Colors.black
                            : Colors.grey),
                  ),
                ),
              ),
            ],
          ),
          ButtonComponent(
            title: 'Search',
            function: () {
              print('placementType ${roomData.getPlacementType}');
              print('checkInController $checkInController');
              print('checkOutController $checkOutController');
              print('number of room ${roomData.getRooms}');
              print('number of adults ${roomData.getAdults}');
              print('number of children ${roomData.getChildren}');
              print('vent ${roomData.getVent}');
            },
          ),
        ],
      ),
    );
  }
}
