inherited frmlocatario: Tfrmlocatario
  Caption = 'Locat'#225'rio'
  PixelsPerInch = 96
  TextHeight = 13
  inherited gridImovel: TDBGrid
    DataSource = DM.dsLocatario
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 0
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 230
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'cpf'
        Title.Alignment = taCenter
        Title.Caption = 'CPF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rg'
        Title.Alignment = taCenter
        Title.Caption = 'RG'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nascimento'
        Title.Alignment = taCenter
        Title.Caption = 'Nascimento'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        Title.Alignment = taCenter
        Title.Caption = 'Sexo'
        Width = 100
        Visible = True
      end>
  end
  inherited RgParametros: TRadioGroup
    Items.Strings = (
      'Nome'
      'CPF')
  end
end
