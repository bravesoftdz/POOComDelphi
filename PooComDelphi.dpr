program PooComDelphi;

uses
  System.StartUpCopy,
  FMX.Forms,
  untCriacaoDeClasses in 'untCriacaoDeClasses.pas' {Form1},
  untClassesAninhadas in 'untClassesAninhadas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
