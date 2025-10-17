unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbProdutos: TFDTable;
    tbMovimentacoes: TFDTable;
    dsProdutos: TDataSource;
    dsMovimentacoes: TDataSource;
    tbMovProdutos: TFDTable;
    dsMovProdutos: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminueEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    tbProdutosid: TFDAutoIncField;
    tbProdutosnome: TStringField;
    tbProdutosfabricante: TStringField;
    tbProdutosvalidade: TDateField;
    tbProdutosestoqueAtual: TIntegerField;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosidMovimentacao: TIntegerField;
    tbMovProdutosidProduto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovProdutosnomeProduto: TStringField;
    sqlMovProdutos: TFDQuery;
    dsSqlMovProdutos: TDataSource;
    sqlMovProdutosid: TFDAutoIncField;
    sqlMovProdutosidMovimentacao: TIntegerField;
    sqlMovProdutosidProduto: TIntegerField;
    sqlMovProdutosqtd: TIntegerField;
    sqlMovProdutosnomeProduto: TStringField;
    procedure tbMovProdutosAfterPost(DataSet: TDataSet);
    procedure tbMovProdutosAfterDelete(DataSet: TDataSet);
    procedure calcularTotais;
    procedure tbMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure tbMovProdutosBeforeDelete(DataSet: TDataSet);
    procedure tbMovimentacoesBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


uses unitCadMovientacao;

{$R *.dfm}

procedure TDM.calcularTotais;
var
  totais : Integer;

begin

  if tbMovProdutos.state in [dsBrowse] then
  begin

      tbMovProdutos.First;

      totais := 0;

      while not tbMovProdutos.Eof do
        begin
          totais := totais + tbMovProdutos.FieldByName('qtd').Value;

          tbMovProdutos.Next;
        end;

      formCadMovimentacoes.txtTotalProdutos.Caption := IntToStr(totais);
  end;
end;


procedure TDM.tbMovimentacoesAfterScroll(DataSet: TDataSet);
begin
  calcularTotais;
end;


procedure TDM.tbMovimentacoesBeforeDelete(DataSet: TDataSet);
begin
  if tbMovProdutos.recordCount > 0 then
    begin
      ShowMessage('Existem produtos cadastros nessa movimentação. Exclua-os primeiro.');
      abort;
    end;
end;

procedure TDM.tbMovProdutosAfterDelete(DataSet: TDataSet);
begin
  calcularTotais;
end;


procedure TDM.tbMovProdutosAfterPost(DataSet: TDataSet);
begin
  calcularTotais;


end;


procedure TDM.tbMovProdutosBeforeDelete(DataSet: TDataSet);
begin
  if (tbMovimentacoes.FieldByName('tipo').value = 'Entrada no Estoque') then
    begin
      sqlDiminueEstoque.ParamByName('pId').Value := tbMovProdutos.fieldByName('idProduto').value;
      sqlDiminueEstoque.ParamByName('pQtd').Value := tbMovProdutos.fieldByName('qtd').value;
      sqlDiminueEstoque.Execute;
    end;


  if (tbMovimentacoes.FieldByName('tipo').value = 'Saida do Estoque') then
    begin
      sqlAumentaEstoque.ParamByName('pId').Value := tbMovProdutos.fieldByName('idProduto').value;
      sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.fieldByName('qtd').value;
      sqlAumentaEstoque.Execute;
    end;
end;

end.
