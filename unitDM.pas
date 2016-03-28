unit unitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    DSImovel: TSQLDataSet;
    CDSImovel: TClientDataSet;
    DSPImovel: TDataSetProvider;
    DataImovel: TDataSource;
    CDSImovelid: TIntegerField;
    CDSImovelnumero: TFMTBCDField;
    CDSImovelrua: TStringField;
    CDSImovelreferencia: TMemoField;
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
