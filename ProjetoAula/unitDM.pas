unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbCliente: TFDTable;
    tbDependente: TFDTable;
    dnCliente: TDataSource;
    dsDependente: TDataSource;
    tbClienteid: TFDAutoIncField;
    tbClientenome: TStringField;
    tbClientesalario: TFloatField;
    tbUsuario: TFDTable;
    dsUsuario: TDataSource;
    tbUsuarioid: TFDAutoIncField;
    tbUsuarionome: TStringField;
    tbUsuariologin: TStringField;
    tbUsuariosenha: TStringField;
    query: TFDQuery;
    procedure tbUsuarioAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public

  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses DbNavigator;

{$R *.dfm}


procedure TDM.tbUsuarioAfterScroll(DataSet: TDataSet);
begin

  if Assigned(formCadUsuarios) then
    begin

      if tbUsuario.Eof = true then
        begin
          formCadUsuarios.btProximo.Enabled := false;
          formCadUsuarios.btUltimo.Enabled := false;
        end
      else
        begin
          formCadUsuarios.btProximo.Enabled := true;
          formCadUsuarios.btUltimo.Enabled := true;
        end;


      if tbUsuario.Bof = true then
        begin
          formCadUsuarios.btPrimeiro.Enabled := false;
          formCadUsuarios.btAnterior.Enabled := false;
        end
      else
        begin
          formCadUsuarios.btPrimeiro.Enabled := true;
          formCadUsuarios.btAnterior.Enabled := true;
        end;

    end;
  end;

end.
