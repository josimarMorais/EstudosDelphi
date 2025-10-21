program ProjetoAula04;

uses
  Vcl.Forms,
  Forms.FormPrincipal in 'src\Forms.FormPrincipal.pas' {FormPrincipal},
  Classes.Exemplo in 'src\Classes.Exemplo.pas',
  Classes.SubExemplo in 'src\Classes.SubExemplo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
