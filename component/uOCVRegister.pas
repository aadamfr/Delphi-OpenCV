// *****************************************************************
// Delphi-OpenCV Demo
// Copyright (C) 2013 Project Delphi-OpenCV
// ****************************************************************
// Contributor:
// Laentir Valetov
// email:laex@bk.ru
// ****************************************************************
// You may retrieve the latest version of this file at the GitHub,
// located at git://github.com/Laex/Delphi-OpenCV.git
// ****************************************************************
// The contents of this file are used with permission, subject to
// the Mozilla Public License Version 1.1 (the "License"); you may
// not use this file except in compliance with the License. You may
// obtain a copy of the License at
// http://www.mozilla.org/MPL/MPL-1_1Final.html
//
// Software distributed under the License is distributed on an
// "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
// implied. See the License for the specific language governing
// rights and limitations under the License.
// *******************************************************************
unit uOCVRegister;

interface

procedure Register;

implementation

Uses
  DesignIntf,
  System.Classes,
  uOCVCamera,
  uOCVView,
  uOCVImageOperation,
  uOCVSplitter;

procedure Register;
begin
  RegisterComponents('OpenCV', [TocvImageOperation]);
  RegisterComponents('OpenCV', [TocvCamera]);
  RegisterComponents('OpenCV', [TocvCamera]);
  RegisterComponents('OpenCV', [TocvView]);
  RegisterComponents('OpenCV', [TocvSplitter]);
  RegisterClasses([TocvImageOperation_None, TocvImageOperation_GrayScale, TovcImageOperation_Canny, TovcImageOperation_Smooth,
    TocvChannel]);
end;

end.
