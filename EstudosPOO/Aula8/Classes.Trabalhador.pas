unit Classes.Trabalhador;

interface
  type TTrabalhador = class
    private
      FSalario: Double;
      procedure Setsalario(const Value: Double);

    public
      property Salario : Double read Fsalario write Setsalario;

      function CalcularSalario(ASalarioMinimo, Aindexador : Double ) : Double; overload;

      function CalcularSalario(AdiasTrabalhados : Integer; AVAlorDia : Double) : Double; overload;

  end;
implementation

{ TTrabalhador }

function TTrabalhador.CalcularSalario(ASalarioMinimo, Aindexador: Double): Double;
begin
  Result :=  ASalarioMinimo * Aindexador;
end;

function TTrabalhador.CalcularSalario(AdiasTrabalhados: Integer;
  AVAlorDia: Double): Double;
begin
  Result := AdiasTrabalhados * AVAlorDia;
end;

procedure TTrabalhador.Setsalario(const Value: Double);
begin
  Fsalario := Value;
end;

end.
