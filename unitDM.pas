unit unitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Stan.Param,
  FireDAC.Comp.Client, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait;

type
  TDM = class(TDataModule)
    FDConexao: TFDConnection;
    FDPMysql: TFDPhysMySQLDriverLink;
    QImovel: TFDQuery;
    dsImovel: TDataSource;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    QImovelid: TFDAutoIncField;
    QImovelnumero: TIntegerField;
    QImovelrua: TStringField;
    tblLocatario: TFDQuery;
    tblLocatarioid: TFDAutoIncField;
    tblLocatarionome: TStringField;
    tblLocatariocpf: TLargeintField;
    tblLocatariorg: TStringField;
    tblLocatarionascimento: TDateField;
    tblLocatariosexo: TStringField;
    dsLocatario: TDataSource;
    QImovelreferencia: TStringField;
    tblLocacao: TFDQuery;
    dsLocacao: TDataSource;
    tblLocacaoid: TFDAutoIncField;
    tblLocacaolocatario_id: TIntegerField;
    tblLocacaoimovel_id: TIntegerField;
    tblLocacaovalor: TSingleField;
    tblLocacaoprazo: TStringField;
    tblLocacaoDataInicio: TDateField;
    tblLocacaoDataFinal: TDateField;
    tblConsulta: TFDQuery;
    DSconsulta: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
