unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.CategoryButtons, Vcl.Buttons, Vcl.ComCtrls, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Locao1: TMenuItem;
    Locatrios1: TMenuItem;
    Imvel1: TMenuItem;
    Locao2: TMenuItem;
    PanelRel: TPanel;
    Relatrios1: TMenuItem;
    Label1: TLabel;
    btnNovoImovel: TBitBtn;
    btnLocatarios: TBitBtn;
    Sair1: TMenuItem;
    Timer: TTimer;
    StatusBar: TStatusBar;
    Image1: TImage;
    procedure Imvel1Click(Sender: TObject);
    procedure btnNovoImovelClick(Sender: TObject);
    procedure Locatrios1Click(Sender: TObject);
    procedure btnLocatariosClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure StatusBarDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure Locao2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unitDM, unitImovel, unitCadImovel, unitCadLocatario, unitLocatario,
  unitLocacoes, unitCadLocacoes;

procedure TfrmPrincipal.btnLocatariosClick(Sender: TObject);
begin
if frmlocatario=nil then
frmlocatario:=Tfrmlocatario.Create(self);
frmlocatario.Show;
end;

procedure TfrmPrincipal.btnNovoImovelClick(Sender: TObject);
begin
if frmCadImovel= nil then

frmCadImovel:=TfrmCadImovel.Create(Self);
frmCadImovel.Show;
dm.QImovel.append;
end;

procedure TfrmPrincipal.Imvel1Click(Sender: TObject);
begin
   if frmImovel= nil then

frmImovel:=TfrmImovel.Create(Self);
frmImovel.Show;


end;

procedure TfrmPrincipal.Locao2Click(Sender: TObject);
begin
 if frmLocacoes =nil then
 frmLocacoes:=TfrmLocacoes.Create(self);
 frmLocacoes.Show;

end;

procedure TfrmPrincipal.Locatrios1Click(Sender: TObject);
begin
if frmlocatario=nil then
frmlocatario:=Tfrmlocatario.Create(self);
frmlocatario.Show;

end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrincipal.StatusBarDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
       if Panel.Index = 0 then
    begin
      StatusBar.Canvas.Brush.Color := clTeal;
      StatusBar.Canvas.FillRect(Rect);
    end
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
StatusBar.Panels[3].Text:= 'Hora: '+TimeToStr(now);
StatusBar.Panels[4].Text:= 'Data: '+DateToStr(now);
end;

end.
