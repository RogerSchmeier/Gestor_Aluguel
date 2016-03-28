program GetAluguel;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {frmPrincipal},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  unitImovel in 'unitImovel.pas' {frmImovel};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmImovel, frmImovel);
  Application.Run;
end.
