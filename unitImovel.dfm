object frmImovel: TfrmImovel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Im'#243'vel'
  ClientHeight = 300
  ClientWidth = 827
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gridImovel: TDBGrid
    Left = 156
    Top = 35
    Width = 669
    Height = 262
    Align = alCustom
    DataSource = DM.dsImovel
    FixedColor = clWhite
    GradientEndColor = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rua'
        Title.Alignment = taCenter
        Title.Caption = 'Rua'
        Title.Color = clSilver
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 300
        Visible = True
      end>
  end
  object btnNovo: TBitBtn
    Left = 8
    Top = 35
    Width = 150
    Height = 55
    Caption = 'Novo'
    TabOrder = 1
    OnClick = btnNovoClick
  end
  object btnEditar: TBitBtn
    Tag = 1
    Left = 8
    Top = 96
    Width = 150
    Height = 55
    Caption = 'Editar'
    TabOrder = 2
    OnClick = btnEditarClick
  end
  object btnExcluir: TBitBtn
    Left = 8
    Top = 157
    Width = 150
    Height = 55
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object edtConsulta: TEdit
    Left = 8
    Top = 8
    Width = 281
    Height = 21
    TabOrder = 4
    TextHint = 'Realizar Consultas'
  end
  object btnSair: TBitBtn
    Left = 8
    Top = 237
    Width = 150
    Height = 55
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
  object RgParametros: TRadioGroup
    Left = 313
    Top = 1
    Width = 185
    Height = 33
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'N'#250'mero'
      'Rua')
    TabOrder = 6
  end
  object CBCadastros: TCheckBox
    Left = 520
    Top = 8
    Width = 153
    Height = 17
    Caption = 'Exibir Todos os Cadastros'
    TabOrder = 7
  end
  object btnProximo: TBitBtn
    Left = 720
    Top = 4
    Width = 30
    Height = 25
    Caption = '+'
    TabOrder = 8
    OnClick = btnProximoClick
  end
  object btnAnterior: TBitBtn
    Left = 752
    Top = 4
    Width = 30
    Height = 25
    Caption = '-'
    TabOrder = 9
    OnClick = btnAnteriorClick
  end
  object btnPrimeiro: TBitBtn
    Left = 686
    Top = 4
    Width = 30
    Height = 25
    Caption = '<<'
    TabOrder = 10
    OnClick = btnPrimeiroClick
  end
  object btnUltimo: TBitBtn
    Left = 785
    Top = 4
    Width = 30
    Height = 25
    Caption = '>>'
    TabOrder = 11
    OnClick = btnUltimoClick
  end
end
