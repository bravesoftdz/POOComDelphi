unit untClassesAninhadas;

interface

type

  TCarro = class
    type
      TRoda = class
      public
       Tipo : string;
       Tamanho : string;
     end;

    private
      Marca : string;
      Modelo : string;
      Roda : TRoda;
    public

    procedure MontarCarro;

  end;

implementation

{ TCarro }

procedure TCarro.MontarCarro;
begin
  Marca := 'BMW';
  Modelo := 'I320';
  Roda.Tipo := 'Liga Leve';
  Roda.Tamanho := '17';
end;

end.
