// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:Bcom/application/database/database_cubit.dart';
import 'package:Bcom/presentation/components/Form/textform.dart';
import 'package:Bcom/presentation/components/Widget/bottom_sheet_choose_picture.dart';
import 'package:Bcom/utils/Services/validators.dart';

import 'package:Bcom/application/export_bloc.dart';
import 'package:Bcom/presentation/components/exportcomponent.dart';

import 'package:Bcom/core.dart';
import 'package:Bcom/utils/constants/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class SelectPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DevisBloc, DevisState>(
        builder: (context, state) => Container(
                child: Column(children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: kMarginY * 2),
                  child: Text('Selectionner votre package')),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: kMarginX),
                child: Stack(children: [
                  GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 20,
                          mainAxisExtent: 200,
                          mainAxisSpacing: 20.0),
                      itemCount: state.list_pack!.length,
                      itemBuilder: (_ctx, index) => InkWell(
                            onTap: () => BlocProvider.of<DevisBloc>(context)
                                .add(SelectPack(pack: state.list_pack![index])),
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: ColorsApp.grey.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Stack(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: getHeight(context) * .10,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: AssetImage(Assets.onb1),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.only(top: kMarginY),
                                          child: Text(
                                            state.list_pack![index].libelle,
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          )),
                                      Container(
                                          padding: EdgeInsets.all(kMarginX),
                                          child: Text(
                                            state.list_pack![index].description,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(),
                                          ))
                                    ],
                                  ),
                                  Positioned(
                                      child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Icon(Icons.verified_rounded,
                                        color: state.pack ==
                                                state.list_pack![index]
                                            ? Colors.greenAccent
                                            : Colors.grey,
                                        size: 30,
                                        weight: 10),
                                  ))
                                ],
                              ),
                            ),
                          ))
                ]),
              )),
            ])));
  }
}
