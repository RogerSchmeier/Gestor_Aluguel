object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'GetAluguel - Gestor de Alugu'#233'is'
  ClientHeight = 431
  ClientWidth = 745
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object PanelRel: TPanel
    Left = 0
    Top = 0
    Width = 121
    Height = 431
    Align = alLeft
    Color = 6449435
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 89
      Height = 14
      Caption = 'Atalhos R'#225'pidos'
      Color = 6449435
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 240
    Top = 304
    object Locao1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object Locatrios1: TMenuItem
        Caption = 'Locat'#225'rios'
      end
      object Locao2: TMenuItem
        Caption = 'Loca'#231#227'o'
      end
    end
    object Imvel1: TMenuItem
      Caption = 'Im'#243'vel'
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
  end
end
