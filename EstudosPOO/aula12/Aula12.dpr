program Aula12;

uses
  Vcl.Forms,
  View.Principal in 'View.Principal.pas' {Form1},
  Classes.Midia in 'Classes.Midia.pas',
  Classes.Audio in 'Classes.Audio.pas',
  Modelo.Player in 'Modelo.Player.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
