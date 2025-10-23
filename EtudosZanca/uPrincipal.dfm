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
    Top = 87
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Label2: TLabel
    Left = 8
    Top = 143
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label3: TLabel
    Left = 8
    Top = 23
    Width = 41
    Height = 15
    Caption = '* Nome'
  end
  object Label4: TLabel
    Left = 8
    Top = 199
    Width = 45
    Height = 15
    Caption = '* Cidade'
  end
  object Label5: TLabel
    Left = 256
    Top = 87
    Width = 44
    Height = 15
    Caption = 'N'#250'mero'
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
    OnEnter = Edit3Enter
  end
  object Edit4: TEdit
    Left = 8
    Top = 216
    Width = 217
    Height = 23
    TabOrder = 3
    OnEnter = Edit4Enter
  end
  object Edit5: TEdit
    Left = 256
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 4
    OnEnter = Edit5Enter
    OnExit = Edit5Exit
  end
  object Button1: TButton
    Left = 256
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Salvar [F1]'
    TabOrder = 5
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 408
    Width = 624
    Height = 33
    Panels = <
      item
        Width = 500
      end
      item
        Text = 'Data: 23/10/2025'
        Width = 50
      end>
    ExplicitLeft = -1
  end
end
