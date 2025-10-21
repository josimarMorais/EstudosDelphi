program POO;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CapacitacaoPoo.Classes.Pessoa in 'EstudosPOO\CapacitacaoPoo.Classes.Pessoa.pas',
  CapacitacaoPoo.Classes.Cliente in 'EstudosPOO\CapacitacaoPoo.Classes.Cliente.pas',
  CapacitacaoPoo.Classes.Usuario in 'EstudosPOO\CapacitacaoPoo.Classes.Usuario.pas',
  CapacitacaoPoo.Classes.Administrador in 'EstudosPOO\CapacitacaoPoo.Classes.Administrador.pas';

var
  Pessoa : TPessoa;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }

    Pessoa := Tpessoa.Create;

    Writeln('Digite o nome da pessoa: ');
    Readln(Pessoa.Nome);
    Writeln('O nome da pessoa é ' + Pessoa.Nome);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
