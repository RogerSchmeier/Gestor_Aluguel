unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls;

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
    procedure Imvel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unitDM, unitImovel;

procedure TfrmPrincipal.Imvel1Click(Sender: TObject);
begin
  frmImovel.ShowModal;
end;

end.
