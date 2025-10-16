unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Menus, unitDM;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MainMenu1: TMainMenu;
    CadastrodeUsurios1: TMenuItem;
    Button1: TButton;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure calcularSalarios;
    procedure CadastrodeUsurios1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    teste: TDM;

  end;

var
  Form1: TForm1;



implementation

{$R *.dfm}

uses DbNavigator;



procedure TForm1.Button1Click(Sender: TObject);
begin

  teste := TDM.Create(nil);

  teste.query.SQl.Clear;
  teste.query.SQl.Add('select 4 as teste1 from dual ');
  teste.query.Open;

  ShowMessage(teste.query.FieldByName('teste1').AsInteger.ToString);




  teste.Free;
end;

procedure TForm1.CadastrodeUsurios1Click(Sender: TObject);
begin
    formCadUsuarios.ShowModal;
end;

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
