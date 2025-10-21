unit CapacitacaoPoo.Classes.Usuario;

interface

  uses CapacitacaoPoo.Classes.Pessoa;

  type
    TUsuario = class(TPessoa)
      NomeAcesso : String;
      Senha: String;
  end;
implementation

end.
