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
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
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
    Width = 41
    Height = 15
    Caption = '* Nome'
  end
  object Edit1: TEdit
    Left = 8
    Top = 104
    Width = 217
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 8
    Top = 160
    Width = 217
    Height = 23
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 8
    Top = 40
    Width = 217
    Height = 23
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 8
    Top = 216
    Width = 217
    Height = 23
    TabOrder = 3
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 8
    Top = 280
    Width = 217
    Height = 23
    TabOrder = 4
    Text = 'Edit5'
  end
  object Button1: TButton
    Left = 256
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = Button1Click
  end
end
