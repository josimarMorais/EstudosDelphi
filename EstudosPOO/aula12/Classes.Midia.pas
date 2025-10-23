unit Classes.Midia;

interface

uses Modelo.Player;

type TMidia = class(TInterfacedObject, )
  private
    FNomeArquivo: String;
    FTipoArquivo: String;
    procedure SetNomeArquivo(const Value: String);
    procedure SetTipoArquivo(const Value: String);

  protected

  public

  published
    property TipoArquivo : String read FTipoArquivo write SetTipoArquivo;
    property NomeArquivo : String read FNomeArquivo write SetNomeArquivo;
    function Avancar : Integer; virtual; abstract;
end;

implementation

{ TMidia }

procedure TMidia.SetNomeArquivo(const Value: String);
begin
  FNomeArquivo := Value;
end;

procedure TMidia.SetTipoArquivo(const Value: String);
begin
  FTipoArquivo := Value;
end;

end.
