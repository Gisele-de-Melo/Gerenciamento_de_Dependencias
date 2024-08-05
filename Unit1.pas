//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Spring.Container, DataAccessInterface, DataAccess, BusinessLogic, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    procedure ConfigureContainer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ConfigureContainer;
begin
  GlobalContainer.RegisterType<TDataAccess>.Implements<IDataAccess>;
  GlobalContainer.RegisterType<TBusinessLogic>;
  GlobalContainer.Build;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  BusinessLogic: TBusinessLogic;
begin
  try
    ConfigureContainer;
    BusinessLogic := GlobalContainer.Resolve<TBusinessLogic>;
    BusinessLogic.ExecuteBusinessRule;
  except
    on E: Exception do
      ShowMessage(E.ClassName+ ': '+ E.Message);
  end;

end;

end.
