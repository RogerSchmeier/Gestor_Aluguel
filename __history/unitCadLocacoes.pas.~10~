unit unitCadLocacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons;

type
  TfrmCadLocacoes = class(TForm)
    Label1: TLabel;
    edtValor: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    edtDataInicio: TDBEdit;
    Label4: TLabel;
    edtDataFinal: TDBEdit;
    comboLocatario: TDBLookupComboBox;
    comboImovel: TDBLookupComboBox;
    Label5: TLabel;
    Label6: TLabel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLocacoes: TfrmCadLocacoes;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmCadLocacoes.btnCancelarClick(Sender: TObject);
begin
edtValor.Clear;
edtDataInicio.Clear;
edtDataFinal.Clear;
dm.tblLocacao.Cancel;
close;
end;

procedure TfrmCadLocacoes.btnSalvarClick(Sender: TObject);
begin
dm.tblLocacao.Post;
edtValor.Clear;
edtDataInicio.Clear;
edtDataFinal.Clear;
ShowMessage('Salvo com Sucesso!');
close;
end;

procedure TfrmCadLocacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmCadLocacoes:=nil;
end;

end.
