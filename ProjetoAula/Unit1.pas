unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure calcularSalarios;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unitDM;

procedure TForm1.calcularSalarios;
var
  totalSalarios: Real;

begin
  DM.tbCliente.First;

  totalSalarios := 0;

  while not DM.tbCliente.Eof do
    begin
      totalSalarios := totalSalarios + DM.tbClientesalario.Value;
      DM.tbCliente.Next;
    end;

  Label4.Caption := FloatToStr(totalSalarios);
end;


procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  if Button = nbPost then
    begin
      label2.Caption := IntToStr(DM.tbCliente.RecordCount);
      calcularSalarios;
    end;

  if Button = nbDelete then
    begin
      label2.Caption := IntToStr(DM.tbCliente.RecordCount);
      calcularSalarios;
    end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Label2.Caption := intToStr(DM.tbCliente.RecordCount);
  calcularSalarios;
end;

end.
