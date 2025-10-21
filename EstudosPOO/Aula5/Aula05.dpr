program Aula05;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {Form1},
  Classe.Pessoa in 'Classe.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
