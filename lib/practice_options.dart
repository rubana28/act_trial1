import 'package:flutter/material.dart';

import 'package:act_trial1/practice_page.dart';

class PracticeOptions{
  double accSlide = 0.0;
  double attSlide = 0.0;
  double defSlide = 0.0;
  double obSlide = 0.0;
  double consSlide = 0.0;
  double commitSlide = 0.0;

  List _sixComponents = [];

  setAcceptanceSlideValue(double value){
    this.accSlide = value;
  }

  setAttentionSlideValue(double value){
    this.attSlide = value;
  }

  setDeffusionSlideValue(double value){
    this.defSlide = value;
  }

  setObservingSelfSlideValue(double value){
    this.obSlide = value;
  }

  setValueConstructionSlideValue(double value){
    this.consSlide = value;
  }

  setCommitmentSlideValue(double value){
    this.commitSlide = value;
  }

  //const PracticeOptions(this.accSlide, this.attSlide, this.defSlide, this.obSlide, this.consSlide, this.commitSlide);

  //_sixComponents = [accSlide, attSlide, defSlide, obSlide, consSlide, commitSlide];

  // print("Acceptance Slide:", accSlide);
  // print("Attention Slide:", attSlide);
  // print("Deffusion Slide:", defSlide);
  // print("Observing Self Slide:", obSlide);
  // print("Values Construction Slide:", consSlide);
  // print("Commitment Slide:", commitSlide);
}