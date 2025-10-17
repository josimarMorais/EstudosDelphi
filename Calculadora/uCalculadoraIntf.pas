unit uCalculadoraIntf;
                 //Interface

interface

uses
  System.Generics.Collections;

type
  IOperador = interface
    function Calcular(const Value: TList<Double>) : Double;
    function GetOperador() : string;
  end;

  ICalculadora = interface
    function AddNumero( const Value: Double) : ICalculadora;
    function AddOperador( const Value: IOperador) : ICalculadora;
    function Resultado() : Double;
  end;

implementation

end.
