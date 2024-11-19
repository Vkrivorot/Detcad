unit uZanatia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ADODB, Grids, DBGrids,
  ComCtrls;

type
  TForm12 = class(TForm)
    PageControl1: TPageControl;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TIntegerField;
    ADOTable1DSDesigner3: TIntegerField;
    ADOTable1DSDesigner4: TDateTimeField;
    ADOTable1DSDesigner5: TIntegerField;
    ADOTable1DSDesigner6: TIntegerField;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button2: TButton;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Button3: TButton;
    Label5: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Button4: TButton;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses uGroup, uKabinet, uZanatie, uVospitatel;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
form11.show;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm12.Button4Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm12.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
 begin
 ADOTable1.Filtered:=false;
 ADOTable1.Filter:='';
 ADOTable1.Filter:='[дата] > '+
  formatdatetime('YYYY-MM-DD', DateTimePicker1.DateTime) +' and [дата] < '
  +formatdatetime('YYYY-MM-DD', DateTimePicker2.DateTime);
 ADOTable1.Filtered:=true;;
 end
 else
 ADOTable1.Filtered:=false;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
datetimepicker2.DateTime:=now();
end;

end.
