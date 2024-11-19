unit uJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, DB, ADODB, StdCtrls, Buttons, ExtCtrls,
  TeeProcs, Chart, DbChart;

type
  TForm7 = class(TForm)
    DBChart1: TDBChart;
    Series2: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

end.
