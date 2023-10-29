import 'package:dio/dio.dart';
import 'package:findjop/core/constant/strings.dart';
import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/jop/presention/model/jopmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/searchinput.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _controller = TextEditingController();
  bool isEmpty = true;
  bool isloading = true;
  late JopModel jopsearch;

  void getjopwithName(String name) async {
    final Dio dio = Dio();

    try {
      isloading = true;
      setState(() {});
      final response = await dio.get(
          'https://project2.amit-learning.com/api/jobs/search',
          options: Options(headers: {
            "Authorization": "Bearer $token",
            "Accept": "application/json"
          }));

      print(response.data);
      jopsearch = JopModel.fromJson(response.data);

      isloading = false;
      setState(() {});
      return response.data;
    } on DioException catch (e) {
      print('faillllllled to load jops with this name');
      isloading = false;
      print(e.response!.data);
    }
  }

  @override
  void initState() {
    _controller.text = 'Test Engineers';
    getjopwithName(_controller.text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 14.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: SizedBox(
                  height: 48.h,
                  child: TextFormField(
                    onTap: () {},
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        isEmpty = !isEmpty;
                        setState(() {});
                      }
                    },
                    autofocus: true,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: AppColor.naturalColor900,
                        fontSize: 14,
                        textBaseline: TextBaseline.alphabetic),
                    showCursor: true,
                    cursorColor: AppColor.primaryColor500,
                    cursorHeight: 20,
                    controller: _controller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      // icon: SvgPicture.asset(
                      //   'assets/icons/arrow-left.svg',
                      //   width: 24,
                      //   height: 24,
                      //   fit: BoxFit.scaleDown,
                      // ),
                      hintText: 'Search With Jop Name...',
                      hintStyle:
                          Theme.of(context).inputDecorationTheme.hintStyle,
                      prefixIcon: InkWell(
                        onTap: () {
                          getjopwithName(_controller.text);
                        },
                        child: SvgPicture.asset(
                          'assets/icons/search.svg',
                          width: 24,
                          height: 24,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      suffixIcon: isEmpty
                          ? const SizedBox()
                          : InkWell(
                              onTap: () {
                                _controller.clear();
                              },
                              child: SvgPicture.asset(
                                'assets/icons/close.svg',
                                width: 24,
                                height: 24,
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.naturalColor300, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AppColor.naturalColor300, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                    ),
                  ),
                ),
              ),

              isloading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(jopsearch.jop[index].compName),
                        trailing: Text(jopsearch.jop[index].salary),
                      );
                    })

              // SearchInput(
              //   ontap: () {},
              // ),

              //typesearch resent
              //resentsearches
              //typesearch popular
              //popularsearches
            ],
          ),
        ),
      ),
    );
  }
}
