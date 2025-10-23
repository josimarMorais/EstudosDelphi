object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 628
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object Label3: TLabel
    Left = 8
    Top = 71
    Width = 41
    Height = 15
    Caption = '* Nome'
  end
  object Label9: TLabel
    Left = 240
    Top = 72
    Width = 64
    Height = 15
    Caption = 'Nascimento'
  end
  object Label10: TLabel
    Left = 8
    Top = 144
    Width = 83
    Height = 15
    Caption = 'Endere'#231'amento'
  end
  object Label11: TLabel
    Left = 360
    Top = 144
    Width = 68
    Height = 15
    Caption = 'Documentos'
  end
  object Edit3: TEdit
    Left = 8
    Top = 88
    Width = 217
    Height = 23
    TabOrder = 0
    OnEnter = Edit3Enter
  end
  object Button1: TButton
    Left = 8
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Salvar [F1]'
    TabOrder = 4
    OnClick = Button1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 595
    Width = 637
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
    ExplicitTop = 408
    ExplicitWidth = 624
  end
  object Button2: TButton
    Left = 120
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Pesquisa [F2]'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Exclus'#227'o [F3]'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Limpar [F4]'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 502
    Top = 15
    Width = 75
    Height = 25
    Caption = 'Sair [ESC]'
    TabOrder = 8
    OnClick = Button5Click
  end
  object MaskEdit1: TMaskEdit
    Left = 240
    Top = 88
    Width = 120
    Height = 23
    EditMask = '99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object Panel1: TPanel
    Left = 360
    Top = 165
    Width = 217
    Height = 135
    TabOrder = 3
    object Label7: TLabel
      Left = 8
      Top = 74
      Width = 15
      Height = 15
      Caption = 'RG'
    end
    object Label8: TLabel
      Left = 8
      Top = 13
      Width = 21
      Height = 15
      Caption = 'CPF'
    end
    object MaskEdit2: TMaskEdit
      Left = 8
      Top = 95
      Width = 118
      Height = 23
      EditMask = '00.000.000-a;0;_'
      MaxLength = 12
      TabOrder = 1
      Text = ''
    end
    object MaskEdit3: TMaskEdit
      Left = 8
      Top = 34
      Width = 119
      Height = 23
      EditMask = ' 000.000.00-00;0;_'
      MaxLength = 14
      TabOrder = 0
      Text = ''
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 165
    Width = 331
    Height = 251
    TabOrder = 2
    object Label1: TLabel
      Left = 18
      Top = 17
      Width = 49
      Height = 15
      Caption = 'Endere'#231'o'
    end
    object Label2: TLabel
      Left = 18
      Top = 73
      Width = 31
      Height = 15
      Caption = 'Bairro'
    end
    object Label4: TLabel
      Left = 18
      Top = 129
      Width = 45
      Height = 15
      Caption = '* Cidade'
    end
    object Label5: TLabel
      Left = 186
      Top = 189
      Width = 44
      Height = 15
      Caption = 'N'#250'mero'
    end
    object Label6: TLabel
      Left = 18
      Top = 187
      Width = 21
      Height = 15
      Caption = 'CEP'
    end
    object Edit1: TEdit
      Left = 18
      Top = 34
      Width = 287
      Height = 23
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 18
      Top = 94
      Width = 287
      Height = 23
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 18
      Top = 146
      Width = 287
      Height = 23
      TabOrder = 2
      OnEnter = Edit4Enter
    end
    object Edit5: TEdit
      Left = 186
      Top = 206
      Width = 120
      Height = 23
      TabOrder = 4
      OnEnter = Edit5Enter
      OnExit = Edit5Exit
    end
    object MaskEdit4: TMaskEdit
      Left = 18
      Top = 206
      Width = 118
      Height = 23
      EditMask = '00000\-999;1;_'
      MaxLength = 9
      TabOrder = 3
      Text = '     -   '
    end
  end
end
