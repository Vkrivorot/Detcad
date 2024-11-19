unit uKabinet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, ComCtrls;

type
  TForm11 = class(TForm)
    PageControl1: TPageControl;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

{$R *.dfm}

end.
