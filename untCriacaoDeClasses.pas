unit untCriacaoDeClasses;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type

  TGarrafa = class
  public
    Cor : string;
    Modelo : string;
    Tampa : string;

    procedure ArmazenarLiquido(Liquido: string);
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

{$R *.fmx}

//Criando um objeto e limpando ele da memória;
procedure TForm1.Button1Click(Sender: TObject);
var
  vMinhaGarrafa : TGarrafa;
begin
  vMinhaGarrafa := nil;

  if Assigned(vMinhaGarrafa) then
     ShowMessage('Estou Instanciado')
  else
     vMinhaGarrafa := TGarrafa.Create; //Instanciando um objeto;

  try
    vMinhaGarrafa.Modelo := 'Metal';
    vMinhaGarrafa.Cor    := 'Preto';
  finally
    //Destruir obejto para limpar a memoria
    //vMinhaGarrafa.Free;

    //Tirandoo objeto que está instanciado na memoria e
    //Apontando a variavel para um valor nulo da memoria;
    FreeAndnil(vMinhaGarrafa);
  end;
end;

{ TGarrafa }

procedure TGarrafa.ArmazenarLiquido(Liquido: string);
begin
//
end;

end.
