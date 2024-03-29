unit untCriacaoDeClasses;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ScrollBox, FMX.Memo;

type

  tConfiguracao = record
    Host : string;
    Path : string;
    Usuario : string;
    Senha : string;
  end;


  TGarrafa = class
  public
    Cor : string;
    Modelo : string;
    Tampa : string;


    procedure ArmazenarLiquido(Liquido: string);
  end;

  TRoda = class
    Tamanho : integer;
    Material : string;
  end;

  TCarro = class
    Cor: string;
    Marca: string;
    Modelo: string;
    Roda: TRoda;

    constructor Create;
    destructor destroy; override;
  end;



  TForm1 = class(TForm)
    Classe: TButton;
    Button1: TButton;
    Memo1: TMemo;
    Line1: TLine;
    Button2: TButton;
    procedure ClasseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure ExibeMemo(vConfiguracao: tConfiguracao);
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

{$R *.fmx}

//Criando um objeto e limpando ele da mem�ria;
procedure TForm1.Button1Click(Sender: TObject);
var
  vConfiguracao : tConfiguracao;
begin
  vConfiguracao.Host := 'Nome do Computador';
  vConfiguracao.Path := 'Caminho';
  vConfiguracao.Usuario := 'Nome do Usu�rio';
  vConfiguracao.Senha := 'Senha do Usu�rio';
  ExibeMemo(vConfiguracao);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TForm1.ExibeMemo(vConfiguracao: tConfiguracao);
begin
  Memo1.Lines.Add(vConfiguracao.Host);
  Memo1.Lines.Add(vConfiguracao.Path);
  Memo1.Lines.Add(vConfiguracao.Usuario);
  Memo1.Lines.Add(vConfiguracao.Senha);
end;

procedure TForm1.ClasseClick(Sender: TObject);
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

    //Tirandoo objeto que est� instanciado na memoria e
    //Apontando a variavel para um valor nulo da memoria;
    FreeAndnil(vMinhaGarrafa);
  end;
end;

{ TGarrafa }

procedure TGarrafa.ArmazenarLiquido(Liquido: string);
begin
//
end;

{ TCarro }

constructor TCarro.Create;
begin
  Roda := TRoda.Create;
end;

destructor TCarro.destroy;
begin
  Roda.Free;
  inherited;
end;

end.
