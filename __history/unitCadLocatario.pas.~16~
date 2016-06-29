unit unitCadLocatario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadLocatario = class(TForm)
    Label1: TLabel;
    edtNome: TDBEdit;
    Label2: TLabel;
    edtCPF: TDBEdit;
    Label3: TLabel;
    edtRG: TDBEdit;
    Label4: TLabel;
    edtNascimento: TDBEdit;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    Label5: TLabel;
    cbSexo: TDBComboBox;
    Label6: TLabel;
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
  frmCadLocatario: TfrmCadLocatario;

implementation

{$R *.dfm}

uses unitCadImovel, unitDM, unitImovel, unitLocatario, unitPrincipal;

procedure TfrmCadLocatario.btnCancelarClick(Sender: TObject);
begin
dm.tblLocatario.Cancel;
edtNome.Clear;
edtCPF.Clear;
edtRG.Clear;
edtNascimento.Clear;
close;
end;

procedure TfrmCadLocatario.btnSalvarClick(Sender: TObject);
begin
dm.tblLocatario.Post;
edtNome.Clear;
edtCPF.Clear;
edtRG.Clear;
edtNascimento.Clear;
ShowMessage('Salvo com Sucesso');
close;
end;

procedure TfrmCadLocatario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
frmCadLocatario:=nil;
end;

end.
