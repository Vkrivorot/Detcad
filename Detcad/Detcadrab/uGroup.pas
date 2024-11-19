unit uGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids, DBGrids, ComCtrls,
  ADODB;

type
  TForm6 = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    PageControl1: TPageControl;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TMemoField;
    ADOTable1DSDesigner4: TIntegerField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses uVospitatel;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
form3.show;
end;

end.
