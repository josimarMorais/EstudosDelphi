unit Classes.SubExemplo;

interface

  uses Classes.Exemplo;

  type
    TSubExemplo = class(TExemplo)
      public
        function GetProtegidoExemplo : string;

  end;

implementation

  function TSubExemplo.GetProtegidoExemplo: string;
  begin
    Result := FProtegido;
  end;


end.
