unit unitImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ExtCtrls;

type
  TfrmImovel = class(TForm)
    gridImovel: TDBGrid;
    btnNovo: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    edtConsulta: TEdit;
    btnSair: TBitBtn;
    RgParametros: TRadioGroup;
    CBCadastros: TCheckBox;
    btnProximo: TBitBtn;
    btnAnterior: TBitBtn;
    btnPrimeiro: TBitBtn;
    btnUltimo: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImovel: TfrmImovel;

implementation

{$R *.dfm}

uses unitDM, unitCadImovel;

procedure TfrmImovel.btnAnteriorClick(Sender: TObject);
begin
dm.QImovel.prior;
end;

procedure TfrmImovel.btnEditarClick(Sender: TObject);
begin
   if frmCadImovel= nil then

frmCadImovel:=TfrmCadImovel.Create(Self);
frmCadImovel.Show;
dm.QImovel.edit;

end;

procedure TfrmImovel.btnExcluirClick(Sender: TObject);
begin
 if Application.MessageBox('Tem Certeza que deseja Excluir este registro', 'Exclus�o', MB_YESNO+MB_ICONEXCLAMATION+MB_ICONQUESTION) = id_yes then
 dm.QImovel.Delete;

end;

procedure TfrmImovel.btnNovoClick(Sender: TObject);
begin

if frmCadImovel= nil then

frmCadImovel:=TfrmCadImovel.Create(Self);
frmCadImovel.Show;
dm.QImovel.append;


end;

procedure TfrmImovel.btnPrimeiroClick(Sender: TObject);
begin
 dm.QImovel.first;
end;

procedure TfrmImovel.btnProximoClick(Sender: TObject);
begin
dm.QImovel.next;
end;


procedure TfrmImovel.btnSairClick(Sender: TObject);
begin
frmImovel.Close;
end;

procedure TfrmImovel.btnUltimoClick(Sender: TObject);
begin
dm.QImovel.Last;
end;

procedure TfrmImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  frmImovel := nil;
end;

end.
