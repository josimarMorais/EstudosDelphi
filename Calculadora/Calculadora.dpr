program Calculadora;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fView},
  uCalculadoraImpl in 'uCalculadoraImpl.pas',
  uCalculadoraIntf in 'uCalculadoraIntf.pas',
  uOperadorSomar in 'uOperadorSomar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfView, fView);
  Application.Run;
end.
