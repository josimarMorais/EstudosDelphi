unit Classes.Exemplo;

interface

type
  TExemplo = class
  private
    { private declarations visível para a classe e classes amigas}
    FPrivado : String;

  protected
    { protected declarations }
    FProtegido : String;
  public
    { public declarations }
    FPublico : String;
    FPublicada: String;
    procedure SetPublicada(const Value: String);

  published
    { published declarations }
    property Publicada : String read FPublicada write SetPublicada;

  end;

implementation

{ TExemplo }

procedure TExemplo.SetPublicada(const Value: String);
begin
  FPublicada := Value;
end;

end.
