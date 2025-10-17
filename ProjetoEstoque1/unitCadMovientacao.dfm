object formCadMovimentacoes: TformCadMovimentacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Movimenta'#231#227'o'
  ClientHeight = 493
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 4
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
    Left = 6
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
    Left = 8
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
    Left = 8
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
    Left = 8
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
  object Label6: TLabel
    Left = 816
    Top = 14
    Width = 317
    Height = 32
    Caption = 'Produtos da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 816
    Top = 108
    Width = 96
    Height = 15
    Caption = 'Escolha o produto'
  end
  object Label8: TLabel
    Left = 992
    Top = 109
    Width = 62
    Height = 15
    Caption = 'Quantidade'
  end
  object Label9: TLabel
    Left = 818
    Top = 432
    Width = 132
    Height = 20
    Caption = 'Total de Produtos: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtTotalProdutos: TLabel
    Left = 954
    Top = 432
    Width = 18
    Height = 20
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBComboBox1: TDBComboBox
    Left = 8
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
    Left = 8
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
    Left = 8
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
    Left = 8
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
    Left = 6
    Top = 64
    Width = 232
    Height = 18
    DataSource = DM.dsMovimentacoes
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 4
    OnClick = DBNavigator1Click
  end
  object DBGrid1: TDBGrid
    Left = 261
    Top = 125
    Width = 409
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
  object DBNavigator2: TDBNavigator
    Left = 913
    Top = 52
    Width = 220
    Height = 25
    DataSource = DM.dsMovProdutos
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 6
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 816
    Top = 128
    Width = 145
    Height = 23
    DataField = 'idProduto'
    DataSource = DM.dsMovProdutos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsProdutos
    TabOrder = 7
  end
  object DBEdit3: TDBEdit
    Left = 992
    Top = 130
    Width = 141
    Height = 23
    DataField = 'qtd'
    DataSource = DM.dsMovProdutos
    TabOrder = 8
  end
  object DBGrid2: TDBGrid
    Left = 813
    Top = 159
    Width = 320
    Height = 253
    DataSource = DM.dsMovProdutos
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nomeProduto'
        Title.Caption = 'PRODUTO'
        Width = 203
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'QUANTIDADE'
        Visible = True
      end>
  end
end
