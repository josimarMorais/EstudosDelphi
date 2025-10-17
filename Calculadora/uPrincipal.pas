unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.NumberBox;

type
  TfView = class(TForm)
    pnDisplay: TPanel;
    pnFundoPrincipal: TPanel;
    pnFundoBotoes: TPanel;
    pnFundoBotoesNumericos: TPanel;
    Panel2: TPanel;
    pnLinha4: TPanel;
    pnLinha3: TPanel;
    btn3: TBitBtn;
    btn2: TBitBtn;
    btn1: TBitBtn;
    pnLinha2: TPanel;
    btn6: TBitBtn;
    btn5: TBitBtn;
    btn4: TBitBtn;
    pnLinha1: TPanel;
    btn10: TBitBtn;
    btn8: TBitBtn;
    btn7: TBitBtn;
    btn5Igual: TBitBtn;
    btn4Multiplicar: TBitBtn;
    btn3Dividir: TBitBtn;
    btn2Menos: TBitBtn;
    btn1Mais: TBitBtn;
    btn0: TBitBtn;
    btnCe: TBitBtn;
    edDisplay: TEdit;
    edHistorico: TEdit;
    procedure btn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fView: TfView;

implementation

{$R *.dfm}



procedure TfView.btn1Click(Sender: TObject);
var
  LNumero : Integer;

begin
  LNumero := TBitBtn(Sender).Tag;

end;

end.
