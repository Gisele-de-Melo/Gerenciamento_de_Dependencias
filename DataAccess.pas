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
unit DataAccess;

interface

uses
  Vcl.Dialogs, DataAccessInterface;

type
  TDataAccess = class(TInterfacedObject, IDataAccess)
  public
    procedure GetData;
  end;

implementation


procedure TDataAccess.GetData;
begin
  //recuperar dados do banco de dados
  ShowMessage('Data retrieved from the database.');
end;

end.
