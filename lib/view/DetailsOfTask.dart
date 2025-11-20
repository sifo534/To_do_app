import '../Controller/homeController.dart';
import '../custom/MaterialBtn.dart';
import '../size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../Model/model.dart';

class DetailsTask extends StatefulWidget {
  final Model item;
  final int? index;
  DetailsTask({Key? key, required this.item, this.index}) : super(key: key);

  @override
  State<DetailsTask> createState() => _DetailsTaskState();
}

class _DetailsTaskState extends State<DetailsTask> {
  final HomeController homeController = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.descriptionController.text = widget.item.Description!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Stack(children: [
          Container(
            height: 18 * SizeConfig.heightMultiplier,
            color: Color.fromARGB(255, 53, 126, 90),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: (7 * SizeConfig.heightMultiplier).toDouble(),
                  left: (3 * SizeConfig.widthMultiplier).toDouble()),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: (15 * SizeConfig.widthMultiplier).toDouble(),
                  ),
                  Text(
                    'Details of Task',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: (3 * SizeConfig.heightMultiplier).toDouble()),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: (11.5 * SizeConfig.heightMultiplier).toDouble()),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (4 * SizeConfig.widthMultiplier).toDouble()),
              child: Container(
                height: (90.0 * SizeConfig.heightMultiplier).toDouble(),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 242, 242),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    SizedBox(
                      height: (3 * SizeConfig.heightMultiplier).toDouble(),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: (3.8 * SizeConfig.widthMultiplier).toDouble(),
                        ),
                        Text(
                          'Title:',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: (3 * SizeConfig.heightMultiplier).toDouble()),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (1 * SizeConfig.heightMultiplier).toDouble(),
                    ),
                    Container(
                      height: (6 * SizeConfig.heightMultiplier).toDouble(),
                      width: (100 * SizeConfig.widthMultiplier).toDouble(),
                      color: Color.fromARGB(255, 201, 201, 201),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: (4 * SizeConfig.widthMultiplier).toDouble(),
                        ),
                        child: Row(
                          children: [
                            Text(
                              widget.item.Title!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: (3.0 * SizeConfig.heightMultiplier).toDouble(),
                                  fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            Container(
                              height: (4.5 * SizeConfig.heightMultiplier).toDouble(),
                              width: (25.0 * SizeConfig.widthMultiplier).toDouble(),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 45, 146, 95),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  widget.item.Time!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                      fontSize:
                                          (2.2 * SizeConfig.heightMultiplier).toDouble()),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: (4 * SizeConfig.widthMultiplier).toDouble(),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: (4 * SizeConfig.widthMultiplier).toDouble(),
                          top: (2 * SizeConfig.heightMultiplier).toDouble(),
                          bottom: (2 * SizeConfig.heightMultiplier).toDouble()),
                      child: Row(
                        children: [
                          Text(
                            'Discription',
                            style: TextStyle(
                                color: Color.fromARGB(255, 136, 136, 136),
                                fontSize: (2.5 * SizeConfig.heightMultiplier).toDouble(),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (4 * SizeConfig.widthMultiplier).toDouble()),
                      child: Container(
                        height: (18 * SizeConfig.heightMultiplier).toDouble(),
                        width: (100 * SizeConfig.widthMultiplier).toDouble(),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 237, 237),
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey, width: 0.8)),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                          controller: homeController.descriptionController,
                          maxLines: 4,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (0 * SizeConfig.widthMultiplier).toDouble(),
                          vertical: (4 * SizeConfig.heightMultiplier).toDouble()),
                      child: Container(
                        height: (7 * SizeConfig.heightMultiplier).toDouble(),
                        width: (100 * SizeConfig.widthMultiplier).toDouble(),
                        color: Color.fromARGB(255, 201, 201, 201),
                        child: Row(
                          children: [
                            SizedBox(
                              width: (4 * SizeConfig.widthMultiplier).toDouble(),
                            ),
                            Text(
                              'Due Date',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: (2.5 * SizeConfig.heightMultiplier).toDouble()),
                            ),
                            Spacer(),
                            Container(
                              height: (4.5 * SizeConfig.heightMultiplier).toDouble(),
                              width: (30 * SizeConfig.widthMultiplier).toDouble(),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 45, 146, 95),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Center(
                                child: Text(
                                  widget.item.Date!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: (2.2 * SizeConfig.heightMultiplier).toDouble(),
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: (4 * SizeConfig.widthMultiplier).toDouble(),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'How much Work is Done ?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: (3 * SizeConfig.heightMultiplier).toDouble()),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: (4 * SizeConfig.widthMultiplier).toDouble(),
                          top: (4 * SizeConfig.heightMultiplier).toDouble()),
                      child: Container(
                          height: (7 * SizeConfig.heightMultiplier).toDouble(),
                          child: ListView.builder(
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                Model cnt =
                                    homeController.PercentNummber[index];
                                return Padding(
                                  padding: EdgeInsets.only(
                                      left: (3 * SizeConfig.widthMultiplier).toDouble()),
                                  child: InkWell(
                                    onTap: () {
                                      homeController.containerBorder.value =
                                          index;
                                    },
                                    child: Obx(
                                      () => Container(
                                        height: (5.5 * SizeConfig.heightMultiplier).toDouble(),
                                        width: (17 * SizeConfig.widthMultiplier).toDouble(),
                                        decoration: BoxDecoration(
                                            color: homeController
                                                .PercentNummber[index]
                                                .percentColors,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            border: Border.all(
                                                color: homeController
                                                            .containerBorder
                                                            .value ==
                                                        index
                                                    ? Colors.black
                                                    : Colors.transparent)),
                                        child: Center(
                                          child: Text(
                                            homeController.PercentNummber[index]
                                                .percentNumbers!
                                                .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: (2.5 * SizeConfig.heightMultiplier).toDouble()),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              })),
                    ),
                    SizedBox(
                      height: (5 * SizeConfig.heightMultiplier).toDouble(),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      color: Colors.black,
                      onPressed: () {
                        homeController.model[widget.index!] = Model(
                          Date: widget.item.Date,
                          Description: widget.item.Description,
                          Time: widget.item.Time,
                          Title: widget.item.Title,
                          color: widget.item.color,
                          empetyListPercent: widget.item.empetyListPercent,
                          img: widget.item.img,
                          percent: widget.item.percent,
                          percentColors: homeController
                              .PercentNummber[
                                  homeController.containerBorder.value]
                              .percentColors,
                          percentNumbers: homeController
                              .PercentNummber[
                                  homeController.containerBorder.value]
                              .percentNumbers,
                        );
                        print(
                            "update list is ${homeController.model[widget.index!].percentNumbers}");

                        Get.back();
                        homeController.descriptionController.clear();
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: (8.0 * SizeConfig.widthMultiplier).toDouble(),
                            right: (8.0 * SizeConfig.widthMultiplier).toDouble(),
                            top: (1.0 * SizeConfig.heightMultiplier).toDouble(),
                            bottom: (1.0 * SizeConfig.heightMultiplier).toDouble()),
                        child: Text(
                          'Save',
                          style: TextStyle(
                              fontSize: 3.0 * SizeConfig.heightMultiplier,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ])),
      ),
    );
  }
}
