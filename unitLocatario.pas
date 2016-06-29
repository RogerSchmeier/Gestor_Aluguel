unit unitLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitImovel, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  Tfrmlocatario = class(TfrmImovel)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlocatario: Tfrmlocatario;

implementation

{$R *.dfm}

uses unitDM, unitCadImovel, unitCadLocatario, unitPrincipal;

procedure Tfrmlocatario.btnAnteriorClick(Sender: TObject);
begin
  dm.tblLocatario.Prior;

end;

procedure Tfrmlocatario.btnEditarClick(Sender: TObject);
begin

  if frmCadLocatario=nil then
  frmCadLocatario:=TfrmCadLocatario.Create(self);
  frmCadLocatario.Show;
   dm.tblLocatario.edit;

end;

procedure Tfrmlocatario.btnExcluirClick(Sender: TObject);
begin

 if Application.MessageBox('Tem Certeza que deseja Excluir este registro', 'Exclus�o', MB_YESNO+MB_ICONEXCLAMATION+MB_ICONQUESTION) = id_yes then
 dm.tblLocatario.Delete;

end;

procedure Tfrmlocatario.btnNovoClick(Sender: TObject);

begin

if frmCadLocatario=nil then
  frmCadLocatario:=TfrmCadLocatario.Create(self);
  frmCadLocatario.Show;
   dm.tblLocatario.Append;

end;

procedure Tfrmlocatario.btnPrimeiroClick(Sender: TObject);
begin

  dm.tblLocatario.first;

end;

procedure Tfrmlocatario.btnProximoClick(Sender: TObject);
begin

  dm.tblLocatario.Next;

end;

procedure Tfrmlocatario.btnUltimoClick(Sender: TObject);
begin
  dm.tblLocatario.Last;

end;

procedure Tfrmlocatario.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=caFree;
frmlocatario:=nil;
end;

end.
