unit UCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask;

type
  TFrmCadCliente = class(TForm)
    PnlRodape: TPanel;
    DBNavigator1: TDBNavigator;
    PnlTopo: TPanel;
    BtnAtualizar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnGravar: TBitBtn;
    BtnDeletar: TBitBtn;
    BtnEditar: TBitBtn;
    BtnNovo: TBitBtn;
    BtnSair: TBitBtn;
    BtnPesquisar: TBitBtn;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    Bevel1: TBevel;
    edID: TDBEdit;
    edSexo: TDBEdit;
    edNome: TDBEdit;
    edEndereco: TDBEdit;
    edCNPJ: TDBEdit;
    edTelefone: TDBEdit;
    edDataCad: TDBEdit;
    edCidade: TDBEdit;
    edDDD: TDBEdit;
    lblID: TLabel;
    lblSexo: TLabel;
    lblNome: TLabel;
    lblEndereco: TLabel;
    lblCNPJ: TLabel;
    lblTelefone: TLabel;
    lblDataCad: TLabel;
    lblCidade: TLabel;
    lblEstado: TLabel;
    lblDDD: TLabel;
    cbEstado: TDBComboBox;
    dbCbInativo: TDBCheckBox;
    cbPessoaFisica: TDBCheckBox;
    procedure cbPessoaFisicaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnPesquisarClick(Sender: TObject);
    procedure BtnAtualizarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure tratabotao();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

uses UDM, UUsuarios, UCliente;

{$R *.dfm}

procedure TFrmCadCliente.BtnAtualizarClick(Sender: TObject);
begin
  Tratabotao();
  DM.cdsCadCliente.Refresh;
  MessageDlg('Atualizado com sucesso!', MTINFORMATION, [MBOK],0);

end;

procedure TFrmCadCliente.BtnCancelarClick(Sender: TObject);
begin
  Tratabotao();
  DM.cdsCadCliente.Cancel;
  dm.cdsCadCliente.CancelUpdates;
  MessageDlg('Ação cancelada com sucesso', MTINFORMATION, [MBOK], 0);
end;

procedure TFrmCadCliente.BtnDeletarClick(Sender: TObject);
begin
 Tratabotao();
  if MessageDlg('Deseja deletar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
    begin
      dm.cdsCadCliente.delete;
      Tratabotao();
    end
    else
     Tratabotao();
     abort;
end;

procedure TFrmCadCliente.BtnEditarClick(Sender: TObject);
begin
  Tratabotao();
  if MessageDlg('Deseja alterar esse registro?', MtConfirmation, [mbOk,MbNo], 0) =mrOk then
   begin
     dm.cdsCadCliente.Edit;
   end
   else
    Tratabotao();
    abort;
end;

procedure TFrmCadCliente.BtnGravarClick(Sender: TObject);
begin
   Tratabotao();
  dm.cdsCadCliente.Post;
  MessageDlg('Registro salvo com sucesso!', MtInformation, [mbOk], 0);
  dm.cdsCadCliente.ApplyUpdates(0);

end;

procedure TFrmCadCliente.BtnNovoClick(Sender: TObject);
var proximo: Integer;
begin

  Tratabotao();
  dm.cdsCadCliente.Open;   //Abre a tabela
  dm.cdsCadCliente.Last;   // Vai para o ultimo registro da tabela
  proximo:= dm.cdsCadClienteID.AsInteger + 1;   //Recebe o valor do ultimo registro e vai para o proximo '+1'
  dm.cdsCadCliente.Append;  //Adiciona mais uma coluna em branco para adionar um novo registro
  dm.cdsCadClienteID.AsInteger := proximo;   //O campo ID recebe o valor da variavel proximo
  edNome.SetFocus;   //Leva o foco para o DBEdit2
  dm.cdsCadClienteDATA_CAD.AsDateTime:=Date;  //O campo CADASTRO recebe a data atualizada

  if dbCbInativo.Checked then
  begin
    dm.cdsCadClienteDATABLOQ.AsDateTime := Date;
  end;

end;

procedure TFrmCadCliente.BtnPesquisarClick(Sender: TObject);
begin
  FrmPesquisaCliente:=TFrmPesquisaCliente.Create(self);
  FrmPesquisaCliente.ShowModal;
  try

  finally
    FrmPesquisaCliente.Free;
    FrmPesquisaCliente:= nil;
  end;
end;

procedure TFrmCadCliente.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCadCliente.cbPessoaFisicaClick(Sender: TObject);
begin
  if cbPessoaFisica.Checked then
  begin
    dm.cdsCadClientePESSOAFISICA.AsString := 'T';
  end
  else
    dm.cdsCadClientePESSOAFISICA.AsString := 'F';

end;

procedure TFrmCadCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmCadCliente.tratabotao;
begin
// Ativa e desativa botões
  BtnNovo.Enabled:= Not BtnNovo.Enabled;
  BtnEditar.Enabled := Not BtnEditar.Enabled;
  BtnDeletar.Enabled:= Not BtnDeletar.Enabled;
  BtnGravar.Enabled := Not BtnGravar.Enabled;
  BtnAtualizar.Enabled := Not BtnAtualizar.Enabled;
end;


end.
