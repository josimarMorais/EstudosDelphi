object formCadMovimentacoes: TformCadMovimentacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Movimenta'#231#227'o'
  ClientHeight = 493
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 309
    Height = 29
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 18
    Top = 103
    Width = 180
    Height = 21
    Caption = 'Tipo da Movimenta'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 165
    Width = 94
    Height = 21
    Caption = 'Data e Hora:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 235
    Width = 99
    Height = 21
    Caption = 'Respons'#225'vel:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 20
    Top = 301
    Width = 101
    Height = 21
    Caption = 'Observa'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBComboBox1: TDBComboBox
    Left = 20
    Top = 125
    Width = 233
    Height = 29
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      'Entrada no Estoque'
      'Saida do Estoque')
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 20
    Top = 188
    Width = 230
    Height = 29
    DataField = 'dataHora'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 20
    Top = 258
    Width = 230
    Height = 29
    DataField = 'responsavel'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 20
    Top = 323
    Width = 230
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 18
    Top = 64
    Width = 232
    Height = 18
    DataSource = DM.dsMovimentacoes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 4
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 288
    Top = 125
    Width = 473
    Height = 287
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Alignment = taCenter
        Title.Caption = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Title.Alignment = taCenter
        Title.Caption = 'DATA E HORA'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Alignment = taCenter
        Title.Caption = 'RESPONS'#193'VEL'
        Visible = True
      end>
  end
end
