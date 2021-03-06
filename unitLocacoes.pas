unit unitLocacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitImovel, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TfrmLocacoes = class(TfrmImovel)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocacoes: TfrmLocacoes;

implementation

{$R *.dfm}

uses unitDM, unitCadLocacoes;

procedure TfrmLocacoes.btnAnteriorClick(Sender: TObject);
begin
  dm.tblLocacao.first;

end;

procedure TfrmLocacoes.btnEditarClick(Sender: TObject);
begin
  if frmCadLocacoes=nil then
  frmCadLocacoes:=TfrmCadLocacoes.Create(self);
  frmCadLocacoes.Show;
  dm.tblLocacao.Edit;

end;

procedure TfrmLocacoes.btnExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Tem Certeza que deseja Excluir este registro', 'Exclus�o',
   MB_YESNO+MB_ICONEXCLAMATION+MB_ICONQUESTION) = id_yes then
 dm.tblLocacao.Delete;


end;

procedure TfrmLocacoes.btnNovoClick(Sender: TObject);
begin
  if  frmCadLocacoes=nil then
  frmCadLocacoes:=TfrmCadLocacoes.Create(self);
  frmCadLocacoes.Show;
  dm.tblLocacao.Append;


end;

procedure TfrmLocacoes.btnPrimeiroClick(Sender: TObject);
begin
  dm.tblLocacao.Prior;

end;

procedure TfrmLocacoes.btnProximoClick(Sender: TObject);
begin
  dm.tblLocacao.Next;

end;

procedure TfrmLocacoes.btnUltimoClick(Sender: TObject);
begin
  dm.tblLocacao.last;

end;

end.
