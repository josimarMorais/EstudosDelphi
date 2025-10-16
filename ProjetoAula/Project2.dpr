program Project2;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  DbNavigator in 'DbNavigator.pas' {formCadUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TformCadUsuarios, formCadUsuarios);
  Application.Run;
end.
