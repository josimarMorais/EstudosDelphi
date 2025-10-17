object formConsMovimentacoes: TformConsMovimentacoes
  Left = 0
  Top = 0
  Caption = 'Consulta de Movimenta'#231#245'es'
  ClientHeight = 598
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Label4: TLabel
    Left = 56
    Top = 552
    Width = 195
    Height = 21
    Caption = 'Total de Movimenta'#231#245'es: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotal: TLabel
    Left = 257
    Top = 552
    Width = 18
    Height = 21
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 83
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1186
    object Label1: TLabel
      Left = 24
      Top = 22
      Width = 255
      Height = 30
      Caption = 'Consultar Movimenta'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 83
    Width = 1000
    Height = 86
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1064
    object Label2: TLabel
      Left = 40
      Top = 11
      Width = 58
      Height = 15
      Caption = 'Data inicial'
    end
    object Label3: TLabel
      Left = 272
      Top = 11
      Width = 52
      Height = 15
      Caption = 'Data Final'
    end
    object txtDataInicial: TMaskEdit
      Left = 40
      Top = 32
      Width = 120
      Height = 23
      EditMask = '##/##/####;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object txtDataFinal: TMaskEdit
      Left = 272
      Top = 32
      Width = 120
      Height = 23
      EditMask = '##/##/####;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object btConsultar: TButton
      Left = 424
      Top = 16
      Width = 185
      Height = 38
      Caption = 'Consultar Movimenta'#231#245'es'
      TabOrder = 2
      OnClick = btConsultarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 175
    Width = 393
    Height = 321
    DataSource = DM.dsSqlMovimentacoes
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'TIPO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataHora'
        Title.Caption = 'DATA/HORA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'responsavel'
        Title.Caption = 'RESPONS'#193'VEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 480
    Top = 184
    Width = 393
    Height = 321
    DataSource = DM.dsSqlMovProdutos
    TabOrder = 3
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
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qtd'
        Title.Caption = 'QUANTIDADE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 128
        Visible = True
      end>
  end
end
