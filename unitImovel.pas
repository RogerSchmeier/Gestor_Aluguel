unit unitImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmImovel = class(TForm)
    gridImovel: TDBGrid;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    edtConsulta: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImovel: TfrmImovel;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  frmImovel := nil;
end;

end.
