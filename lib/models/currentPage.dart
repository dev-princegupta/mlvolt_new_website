import 'package:flutter/material.dart';


class CurrentPage with ChangeNotifier{
  String _currentPage="HOME";
  String _device = "desktop";

  String get currentPage =>_currentPage;
  String get currentDevice =>_device;
  
  void updateCurrentPage(String newPage){
    _currentPage=newPage;
    notifyListeners();
  }

  void updateDeviceSize(double deviceSize){
    if(deviceSize<600){
      _device = "mobile";
    }else if(deviceSize>600&&deviceSize<1200){
      _device = "tab";
    }else{
      _device = "desktop";
    }

    notifyListeners();
  }

}