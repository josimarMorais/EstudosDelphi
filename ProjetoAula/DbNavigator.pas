unit DbNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TformCadUsuarios = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    btPrimeiro: TButton;
    btAnterior: TButton;
    btProximo: TButton;
    btUltimo: TButton;
    btInserir: TButton;
    btDeletar: TButton;
    btSalvar: TButton;
    btCancelar: TButton;
    btAbrir: TButton;
    Button10: TButton;
    DBEdit1: TDBEdit;
    procedure btAbrirClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadUsuarios: TformCadUsuarios;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadUsuarios.btAbrirClick(Sender: TObject);
begin
  DM.tbUsuario.Open();
end;

procedure TformCadUsuarios.Button10Click(Sender: TObject);
begin
 DM.tbUsuario.Close();
end;

procedure TformCadUsuarios.btAnteriorClick(Sender: TObject);
begin
  DM.tbUsuario.Prior;
end;

procedure TformCadUsuarios.btCancelarClick(Sender: TObject);
begin
  btInserir.Enabled := true;
  btDeletar.Enabled := true;

  btSalvar.Enabled   := false;
  btCancelar.Enabled := false;

  DM.tbUsuario.Cancel;

end;

procedure TformCadUsuarios.btDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza que deseja apagar?', 'Atenção', MB_ICONQUESTION+MB_YESNO) = mrYes then
    begin
      DM.tbUsuario.Delete;
    end;
end;

procedure TformCadUsuarios.btInserirClick(Sender: TObject);
begin
  btInserir.Enabled := false;
  btDeletar.Enabled := false;

  btSalvar.Enabled   := true;
  btCancelar.Enabled := true;

  DM.tbUsuario.Append;

end;

procedure TformCadUsuarios.btPrimeiroClick(Sender: TObject);
begin
  DM.tbUsuario.First;
end;

procedure TformCadUsuarios.btProximoClick(Sender: TObject);
begin
  DM.tbUsuario.Next;
end;

procedure TformCadUsuarios.btSalvarClick(Sender: TObject);
begin
  btInserir.Enabled := true;
  btDeletar.Enabled := true;

  btSalvar.Enabled   := false;
  btCancelar.Enabled := false;

  DM.tbUsuario.Post;

end;

procedure TformCadUsuarios.btUltimoClick(Sender: TObject);
begin
  DM.tbUsuario.Last;
end;

end.
