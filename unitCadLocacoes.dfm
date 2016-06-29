object frmCadLocacoes: TfrmCadLocacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Nova Loca'#231#227'o'
  ClientHeight = 249
  ClientWidth = 559
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 54
    Width = 48
    Height = 13
    Caption = 'Valor (R$)'
    FocusControl = edtValor
  end
  object Label2: TLabel
    Left = 16
    Top = 112
    Width = 84
    Height = 13
    Caption = 'Prazo de Vig'#234'ncia'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 144
    Top = 54
    Width = 90
    Height = 13
    Caption = 'Data Inicio Periodo'
    FocusControl = edtDataInicio
  end
  object Label4: TLabel
    Left = 328
    Top = 54
    Width = 87
    Height = 13
    Caption = 'Data Final Periodo'
    FocusControl = edtDataFinal
  end
  object Label5: TLabel
    Left = 16
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Locat'#225'rio'
  end
  object Label6: TLabel
    Left = 241
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Im'#243'vel'
  end
  object Label7: TLabel
    Left = 0
    Top = 158
    Width = 560
    Height = 13
    Caption = 
      '================================================================' +
      '======'
  end
  object edtValor: TDBEdit
    Left = 16
    Top = 73
    Width = 105
    Height = 21
    DataField = 'valor'
    DataSource = DM.dsLocacao
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 131
    Width = 446
    Height = 21
    DataField = 'prazo'
    DataSource = DM.dsLocacao
    TabOrder = 1
  end
  object edtDataInicio: TDBEdit
    Left = 144
    Top = 73
    Width = 130
    Height = 21
    DataField = 'DataInicio'
    DataSource = DM.dsLocacao
    MaxLength = 10
    TabOrder = 2
  end
  object edtDataFinal: TDBEdit
    Left = 328
    Top = 73
    Width = 134
    Height = 21
    DataField = 'DataFinal'
    DataSource = DM.dsLocacao
    MaxLength = 10
    TabOrder = 3
  end
  object comboLocatario: TDBLookupComboBox
    Left = 16
    Top = 27
    Width = 219
    Height = 21
    DataField = 'locatario_id'
    DataSource = DM.dsLocacao
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsLocatario
    TabOrder = 4
  end
  object comboImovel: TDBLookupComboBox
    Left = 241
    Top = 27
    Width = 221
    Height = 21
    DataField = 'imovel_id'
    DataSource = DM.dsLocacao
    KeyField = 'id'
    ListField = 'numero'
    ListSource = DM.dsImovel
    TabOrder = 5
  end
  object btnSalvar: TBitBtn
    Left = 8
    Top = 177
    Width = 200
    Height = 50
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btnSalvarClick
  end
  object btnCancelar: TBitBtn
    Left = 243
    Top = 177
    Width = 200
    Height = 50
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = btnCancelarClick
  end
end
