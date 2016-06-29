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
    procedure edtConsultaChange(Sender: TObject);
    procedure CBCadastrosClick(Sender: TObject);
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

procedure Consulta(texto: string; tudo,opcao: char);
begin
    with dm.tblConsulta do
      begin
        close;
        SQL.Clear;
        sql.Add( ' select IM.numero, IM.rua, IM.referencia from imovel IM ' );
          if tudo <> 'S' then
            begin
              case opcao of
                 'R': SQL.Add('where IM.rua containing :Parametro ');
                 'N': SQL.Add('where IM.numero containing :Parametro ');
              end;
              ParamByName('Parametro').AsString:= texto;
            end;
            open;
      end;
end;

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
Close;
end;

procedure TfrmImovel.btnUltimoClick(Sender: TObject);
begin
dm.QImovel.Last;
end;

procedure TfrmImovel.CBCadastrosClick(Sender: TObject);
begin
   Consulta(edtConsulta.Text,'N','R');
    if CBCadastros.Checked=true then
    edtConsulta.Enabled:=false
      else
        begin
          edtConsulta.Enabled:=true;
          edtConsulta.SetFocus;
        end;
end;

procedure TfrmImovel.edtConsultaChange(Sender: TObject);
var tudo: char;
begin
    if CBCadastros.Checked=true then
      tudo:='S';
      case RgParametros.ItemIndex of
      0: Consulta(edtConsulta.Text,'N', tudo);
      1: Consulta(edtConsulta.Text,'R', tudo);

      end;
  
end;

procedure TfrmImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  frmImovel := nil;
end;

end.
