object formCadUsuarios: TformCadUsuarios
  Left = 0
  Top = 0
  Caption = 'DB Navigator'
  ClientHeight = 559
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 336
    Width = 665
    Height = 200
    DataSource = DM.dsUsuario
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Title.Caption = 'LOGIN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'senha'
        Title.Caption = 'SENHA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 288
    Width = 656
    Height = 42
    DataSource = DM.dsUsuario
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 1
  end
  object btPrimeiro: TButton
    Left = 16
    Top = 232
    Width = 75
    Height = 33
    Caption = '<<'
    Enabled = False
    TabOrder = 2
    OnClick = btPrimeiroClick
  end
  object btAnterior: TButton
    Left = 99
    Top = 232
    Width = 75
    Height = 33
    Caption = '<'
    Enabled = False
    TabOrder = 3
    OnClick = btAnteriorClick
  end
  object btProximo: TButton
    Left = 180
    Top = 232
    Width = 75
    Height = 33
    Caption = '>'
    TabOrder = 4
    OnClick = btProximoClick
  end
  object btUltimo: TButton
    Left = 261
    Top = 232
    Width = 75
    Height = 33
    Caption = '>>'
    TabOrder = 5
    OnClick = btUltimoClick
  end
  object btInserir: TButton
    Left = 345
    Top = 232
    Width = 75
    Height = 33
    Caption = 'Inserir'
    TabOrder = 6
    OnClick = btInserirClick
  end
  object btDeletar: TButton
    Left = 426
    Top = 232
    Width = 75
    Height = 33
    Caption = 'Deletar'
    TabOrder = 7
    OnClick = btDeletarClick
  end
  object btSalvar: TButton
    Left = 508
    Top = 232
    Width = 75
    Height = 33
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 8
    OnClick = btSalvarClick
  end
  object btCancelar: TButton
    Left = 589
    Top = 232
    Width = 75
    Height = 33
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 9
    OnClick = btCancelarClick
  end
  object btAbrir: TButton
    Left = 16
    Top = 176
    Width = 95
    Height = 33
    Caption = 'Abrir Tabela'
    TabOrder = 10
    OnClick = btAbrirClick
  end
  object Button10: TButton
    Left = 117
    Top = 176
    Width = 95
    Height = 33
    Caption = 'Fechar Tabela'
    TabOrder = 11
    OnClick = Button10Click
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 104
    Width = 121
    Height = 23
    DataSource = DM.dsUsuario
    TabOrder = 12
  end
end
