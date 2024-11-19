unit uUspevaemost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm13 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    nd: TDateTimePicker;
    kd: TDateTimePicker;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery1DSDesigner: TDateTimeField;
    ADOQuery1DSDesigner2: TWideStringField;
    ADOQuery1DSDesigner3: TWideStringField;
    ADOQuery1DSDesigner6: TIntegerField;
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    nd1: TDateTimePicker;
    kd1: TDateTimePicker;
    GroupBox5: TGroupBox;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox6: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery2DSDesigner: TDateTimeField;
    ADOQuery2DSDesigner2: TWideStringField;
    ADOQuery2_: TWideStringField;
    ADOQuery2DSDesigner3: TIntegerField;
    ADOQuery2DSDesigner4: TWideStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses uMenu;

{$R *.dfm}

procedure TForm13.Button2Click(Sender: TObject);
begin
form1.GridToExcel(dbgrid1);
end;

procedure TForm13.Button1Click(Sender: TObject);
begin

if   DBLookupComboBox1.Text='' then exit;

adoquery1.Close;
adoquery1.Parameters.ParamByName('nd').Value :=datetostr(nd.DateTime);//  ADOTableRespDSDesigner3.KeyValue;
adoquery1.Parameters.ParamByName('kd').Value :=datetostr(kd.DateTime);//  ADOTableRespDSDesigner3.KeyValue;

adoquery1.Parameters.ParamByName('kl').Value :=DBLookupComboBox1.KeyValue;//  ADOTableRespDSDesigner3.KeyValue;

adoquery1.Open;
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
form1.GridToExcel(dbgrid2);
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
if   DBLookupComboBox2.Text='' then exit;

adoquery2.Close;
adoquery2.Parameters.ParamByName('nd').Value :=datetostr(nd1.DateTime);//  ADOTableRespDSDesigner3.KeyValue;
adoquery2.Parameters.ParamByName('kd').Value :=datetostr(kd1.DateTime);//  ADOTableRespDSDesigner3.KeyValue;

adoquery2.Parameters.ParamByName('kl').Value :=DBLookupComboBox2.KeyValue;//  ADOTableRespDSDesigner3.KeyValue;

adoquery2.Open;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
kd.DateTime:=now();
kd1.DateTime:=now();
end;

end.
