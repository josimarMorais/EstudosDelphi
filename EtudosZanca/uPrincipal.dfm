object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 83
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Label2: TLabel
    Left = 8
    Top = 139
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Label3: TLabel
    Left = 8
    Top = 19
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Edit1: TEdit
    Left = 8
    Top = 104
    Width = 217
    Height = 23
    TabOrder = 1
    OnKeyDown = Edit1KeyDown
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 8
    Top = 160
    Width = 217
    Height = 23
    TabOrder = 2
    OnKeyDown = Edit2KeyDown
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 8
    Top = 40
    Width = 217
    Height = 23
    TabOrder = 0
    OnKeyDown = Edit3KeyDown
    OnKeyPress = Edit3KeyPress
  end
end
