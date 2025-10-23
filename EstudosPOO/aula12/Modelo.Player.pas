unit Modelo.Player;

interface

type
  IPlayer = interface
  ['{9902D080-D1A4-4363-A6F6-475687BA5F63}']

    function Play: Boolean;
    function Avancar: Boolean;
    function Retroceder: Boolean;
    function Stop: Boolean;
    function Pause: Boolean;
    function Localizar: Integer;

  end;

implementation

end.
