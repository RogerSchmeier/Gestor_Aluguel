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
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gridImovel: TDBGrid
    Left = 0
    Top = 35
    Width = 825
    Height = 262
    Align = alCustom
    DataSource = DM.DataImovel
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
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#250'mero'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rua'
        Title.Alignment = taCenter
        Title.Caption = 'Rua'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'referencia'
        Title.Alignment = taCenter
        Title.Caption = 'Refer'#234'ncia'
        Width = 400
        Visible = True
      end>
  end
  object btnNovo: TBitBtn
    Left = 0
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 1
  end
  object btnEditar: TBitBtn
    Left = 81
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 2
  end
  object btnExcluir: TBitBtn
    Left = 162
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
  end
  object edtConsulta: TEdit
    Left = 488
    Top = 8
    Width = 265
    Height = 21
    TabOrder = 4
    TextHint = 'Realizar Consultas'
  end
end
