object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 185
    Height = 177
    TabOrder = 0
  end
  object Memo2: TMemo
    Left = 254
    Top = 16
    Width = 185
    Height = 177
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 104
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 208
    Top = 64
  end
end
