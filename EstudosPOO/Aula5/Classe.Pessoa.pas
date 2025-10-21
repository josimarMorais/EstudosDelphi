unit Classe.Pessoa;

interface
type TPessoa = class
  private
    FNome: string;
    procedure SetNome(const Value: string);
    function GetNome: string;

  public
    property Nome : string read GetNome write SetNome;
end;

implementation

uses sysUtils;

{ TPessoa }

function TPessoa.GetNome: string;
begin

  Result := UpperCase(Fnome);
end;

procedure TPessoa.SetNome(const Value: string);
begin
  if not Value.IsEmpty then
    begin
      FNome:= Value;
    end

  else
    begin
      raise Exception.Create('Nome não pode ser Vazio!');
    end;
  end;
end.
