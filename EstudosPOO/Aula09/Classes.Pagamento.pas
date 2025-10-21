unit Classes.Pagamento;

interface
  type TPagamento = class
    private
    FValor: Double;
    FMensagem: String;
    procedure SetMensagem(const Value: String);
    procedure SetValor(const Value: Double);

    public
      property Valor : Double read FValor write SetValor;
      property Mensagem : String read FMensagem write SetMensagem;

      function Pagar : string; virtual;
  end;
implementation

{ TPagamento }

function TPagamento.Pagar: string;
begin
  Result := ('Dentro da Classes.Pagamento');
end;

procedure TPagamento.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

procedure TPagamento.SetValor(const Value: Double);
begin
  FValor := Value;
end;

end.
