unit Classes.Audio;

interface

uses Classes.Midia, Modelo.Player;

type
  TAudio = class(TMidia, IPlayer)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    function Tocar: Boolean;
    function Play: Boolean;
    function Avancar: Boolean;
    function Retroceder: Boolean;
    function Stop: Boolean;
    function Pause: Boolean;
    function Localizar: Integer;

  published
    { published declarations }
  end;

implementation

{ TAudio }

function TAudio.Tocar: Boolean;
begin
  Result := True;
end;

end.
