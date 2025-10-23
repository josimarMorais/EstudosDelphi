unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  cor : TColor;
  boolValidar: Boolean;

begin

  cor := clWebLightGoldenrodYellow;
  boolValidar := true;

  if trim(Edit3.Text) = '' then
  begin
    //ShowMessage('O campo nome é de preenchimento obrigatório!');
    boolValidar := false;
    edit3.Color := cor;
  end;

  if trim(Edit4.Text) = '' then
  begin
    //ShowMessage('O campo cidade é de preenchimento obrigatório!');
    boolValidar := false;
    edit4.Color := cor;
  end;

  if boolValidar then
  begin
    ShowMessage('Cadastro realizado com sucesso!');
  end
  else
  begin
    ShowMessage('Preencha os campos obrigatórios! ( * ) ');
  end;


end;

procedure TForm1.Edit3Enter(Sender: TObject);
begin
  edit3.Color := clWindow;
end;

procedure TForm1.Edit4Enter(Sender: TObject);
begin
  edit4.Color := clWindow;
end;

procedure TForm1.Edit5Enter(Sender: TObject);
begin
  StatusBar1.Panels[0]. Text := '  Informe apenas Números';
end;

procedure TForm1.Edit5Exit(Sender: TObject);
begin
  StatusBar1.Panels[0]. Text := '';
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = 13 then
  begin
    Perform(Wm_NextDlgCtl, 0, 0);
  end;

  if key = 112 then
  begin
    Button1Click(self);
  end;

end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
  end;
end;

end.
