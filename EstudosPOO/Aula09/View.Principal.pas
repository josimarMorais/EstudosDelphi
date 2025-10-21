unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Classes.Dinheiro, Classes.Pix;

procedure TForm1.Button1Click(Sender: TObject);
var
  lDin : TDinheiro;
begin
  lDin := TDinheiro.Create;
  lDin.Valor := StrToFloat(Edit1.Text);
  lDin.Mensagem := lDin.Pagar;

  ShowMessage(lDin.Mensagem);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lPix : TPix;
begin
  Lpix := TPix.Create;
  Lpix.Mensagem := lpix.Pagar;

  ShowMessage(lpix.Mensagem);
end;

end.
