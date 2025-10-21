unit Classes.Pix;

interface

uses Classes.Pagamento;

  type TPix = class(TPagamento)
    private

    public
      function Pagar : String; override;
  end;
implementation

{ TPix }

function TPix.Pagar: String;
begin
  Result := 'Dentro da Classe Pix';
end;

end.
