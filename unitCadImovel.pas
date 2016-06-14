unit unitCadImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons;

type
  TfrmCadImovel = class(TForm)
    edtNumero: TDBEdit;
    edtRua: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    Label4: TLabel;
    memoRefererencias: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadImovel: TfrmCadImovel;

implementation

{$R *.dfm}

uses unitDM, unitImovel, unitPrincipal;

procedure TfrmCadImovel.btnCancelarClick(Sender: TObject);
begin
dm.QImovel.Cancel;
edtNumero.Clear;
edtRua.Clear;
memoRefererencias.Clear;
close;
end;

procedure TfrmCadImovel.btnSalvarClick(Sender: TObject);
begin
dm.QImovel.post;
edtNumero.Clear;
edtRua.Clear;
memoRefererencias.Clear;
ShowMessage('Salvo com Sucesso');
close;


end;

procedure TfrmCadImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
frmCadImovel := nil;

end;

procedure TfrmCadImovel.FormCreate(Sender: TObject);
begin
edtNumero.Clear;
edtRua.Clear;
memoRefererencias.Clear;
end;

end.
