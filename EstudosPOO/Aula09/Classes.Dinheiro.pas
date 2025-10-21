unit Classes.Dinheiro;

interface

uses Classes.Pagamento;

  type TDinheiro = class(TPagamento)
    private

    public
      function Pagar : string; override;

  end;
implementation

{ TDinheiro }

function TDinheiro.Pagar: string;
begin
  Result := 'Dentro da Classe dinheiro';
end;

end.
