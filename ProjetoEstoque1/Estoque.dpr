program Estoque;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {formPrincipal},
  unitCadProduto in 'unitCadProduto.pas' {formCadProdutos},
  unitCadMovientacao in 'unitCadMovientacao.pas' {formCadMovimentacoes},
  unitConsMovimentacao in 'unitConsMovimentacao.pas' {formConsMovimentacoes},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TformCadProdutos, formCadProdutos);
  Application.CreateForm(TformCadMovimentacoes, formCadMovimentacoes);
  Application.CreateForm(TformConsMovimentacoes, formConsMovimentacoes);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
