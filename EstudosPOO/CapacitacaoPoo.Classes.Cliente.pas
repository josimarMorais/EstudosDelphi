unit CapacitacaoPoo.Classes.Cliente;

interface

  uses
    CapacitacaoPoo.Classes.Pessoa;

  type TCliente = class(TPessoa)
    CNPJ : String;
    RazaoSocial : String;
  end;

implementation

end.
