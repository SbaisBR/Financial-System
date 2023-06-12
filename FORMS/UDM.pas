unit UDM;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDM = class(TDataModule)
    Conexao: TSQLConnection;
    sqlMovimento: TSQLDataSet;
    dspMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    dtsMovimento: TDataSource;
    sqlMovimentoIDMOVIMENTO: TIntegerField;
    sqlMovimentoCADASTRO: TDateField;
    sqlMovimentoUSUARIO: TStringField;
    sqlMovimentoTIPO: TStringField;
    sqlMovimentoVALOR: TFMTBCDField;
    cdsMovimentoIDMOVIMENTO: TIntegerField;
    cdsMovimentoCADASTRO: TDateField;
    cdsMovimentoUSUARIO: TStringField;
    cdsMovimentoTIPO: TStringField;
    cdsMovimentoVALOR: TFMTBCDField;
    dtsPesquisaMov: TDataSource;
    cdsPesquisaMov: TClientDataSet;
    dspPesquisaMov: TDataSetProvider;
    sqlPesquisaMov: TSQLDataSet;
    sqlPesquisaMovIDMOVIMENTO: TIntegerField;
    sqlPesquisaMovCADASTRO: TDateField;
    sqlPesquisaMovUSUARIO: TStringField;
    sqlPesquisaMovTIPO: TStringField;
    sqlPesquisaMovVALOR: TFMTBCDField;
    cdsPesquisaMovIDMOVIMENTO: TIntegerField;
    cdsPesquisaMovCADASTRO: TDateField;
    cdsPesquisaMovUSUARIO: TStringField;
    cdsPesquisaMovTIPO: TStringField;
    cdsPesquisaMovVALOR: TFMTBCDField;
    sqlUsuario: TSQLDataSet;
    dspUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    dtsUsuario: TDataSource;
    cdsUsuarioIDUSUARIO: TIntegerField;
    cdsUsuarioNOME: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioTIPO: TStringField;
    cdsUsuarioCADASTRO: TDateField;
    dtsLogin: TDataSource;
    cdsLogin: TClientDataSet;
    dspLogin: TDataSetProvider;
    sqlLogin: TSQLDataSet;
    cdsLoginIDUSUARIO: TIntegerField;
    cdsLoginNOME: TStringField;
    cdsLoginSENHA: TStringField;
    cdsLoginTIPO: TStringField;
    cdsLoginCADASTRO: TDateField;
    cdsLoginNIVEL: TIntegerField;
    sqlPesquisaUsu: TSQLDataSet;
    dspPesquisaUsu: TDataSetProvider;
    cdsPesquisaUsu: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    dtsPesquisaUsu: TDataSource;
    sqlCadCliente: TSQLDataSet;
    dspCadCliente: TDataSetProvider;
    cdsCadCliente: TClientDataSet;
    dtsCadCliente: TDataSource;
    sqlCadClienteID: TIntegerField;
    sqlCadClienteNOME: TStringField;
    sqlCadClienteENDERECO: TStringField;
    sqlCadClienteCNPJ: TStringField;
    sqlCadClienteTELEFONE: TStringField;
    sqlCadClienteDATA_CAD: TDateField;
    sqlCadClienteCIDADE: TStringField;
    sqlCadClienteESTADO: TStringField;
    sqlCadClienteDDD: TIntegerField;
    sqlCadClienteSEXO: TStringField;
    sqlCadClienteINATIVO: TStringField;
    sqlCadClienteDATABLOQ: TDateField;
    cdsCadClienteID: TIntegerField;
    cdsCadClienteNOME: TStringField;
    cdsCadClienteENDERECO: TStringField;
    cdsCadClienteCNPJ: TStringField;
    cdsCadClienteTELEFONE: TStringField;
    cdsCadClienteDATA_CAD: TDateField;
    cdsCadClienteCIDADE: TStringField;
    cdsCadClienteESTADO: TStringField;
    cdsCadClienteDDD: TIntegerField;
    cdsCadClienteSEXO: TStringField;
    cdsCadClienteINATIVO: TStringField;
    cdsCadClienteDATABLOQ: TDateField;
    sqlClientes: TSQLDataSet;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateField2: TDateField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateField3: TDateField;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    DateField4: TDateField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField6: TIntegerField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateField5: TDateField;
    dtsClientes: TDataSource;
    sqlCadClientePESSOAFISICA: TStringField;
    cdsCadClientePESSOAFISICA: TStringField;
    sqlClientesPESSOAFISICA: TStringField;
    cdsClientesPESSOAFISICA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    Usuario,Tipo: String;
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
