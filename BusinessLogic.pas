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
unit BusinessLogic;

interface

uses
  Vcl.Dialogs, DataAccessInterface;

type
  TBusinessLogic = class
  private
    FDataAccess: IDataAccess;
  public
    constructor Create(ADataAccess: IDataAccess);
    procedure ExecuteBusinessRule;
  end;

implementation

constructor TBusinessLogic.Create(ADataAccess: IDataAccess);
begin
  FDataAccess := ADataAccess;
end;

procedure TBusinessLogic.ExecuteBusinessRule;
begin
  FDataAccess.GetData;
  // Implementação da regra de negócio
  ShowMessage('Business rule executed.');
end;

end.
