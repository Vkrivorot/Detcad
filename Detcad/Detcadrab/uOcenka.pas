unit uOcenka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, ExtCtrls, Grids, DBGrids,
  Buttons, DateUtils ,uPropis, ComCtrls ,  uselector, Spin;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TIntegerField;
    ADOTable1DSDesigner3: TIntegerField;
    ADOTable1DSDesigner4: TIntegerField;
    ADOTable1DSDesigner5: TIntegerField;
    ADOQuery1: TADOQuery;
    GroupBox1: TGroupBox;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    ADOQuery1DSDesigner: TAutoIncField;
    ADOQuery1DSDesigner2: TDateTimeField;
    ADOQuery1DSDesigner3: TWideStringField;
    ADOQuery1DSDesigner4: TWideStringField;
    ADOQuery1DSDesigner5: TWideStringField;
    ADOQuery1DSDesigner6: TWideStringField;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Splitter1: TSplitter;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    DBNavigator3: TDBNavigator;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Splitter2: TSplitter;
    ADOQuery1DSDesigner7: TWideStringField;
    DataSource3: TDataSource;
    ADOQuery2: TADOQuery;
    DBGrid3: TDBGrid;
    ADOQuery1KLKOD: TAutoIncField;
    ADOQuery3: TADOQuery;
    GroupBox5: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpinEdit1: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery3DSDesigner: TWideStringField;
    ADOQuery3DSDesigner2: TIntegerField;
    ADOQuery3DSDesigner3: TIntegerField;
    ADOQuery3DSDesigner4: TIntegerField;
    ADOQuery3DSDesigner5: TAutoIncField;
    ADOQuery2DSDesigner: TWideStringField;
    ADOQuery2DSDesigner4: TAutoIncField;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses uGroup,  uOtchetToRTF, uVopitanik, uMenu, uAttestat;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
var a,b,c : integer;
begin
    if  ADOQuery1DSDesigner.AsString='' then exit;
  if ADOQuery2DSDesigner.AsString='' then exit;


 // ADOTable1DSDesigner2 Воспитанник
 // ADOTable1DSDesigner3  балл

 // ADOTable1DSDesigner4  аттест
 // ADOTable1DSDesigner5  занятие
adotable1.Open;
adotable1.Insert;
ADOTable1DSDesigner2.Value:= ADOQuery2DSDesigner4.AsInteger;
ADOTable1DSDesigner3.Value:=  SpinEdit1.Value;
ADOTable1DSDesigner4.Value:=  DBLookupComboBox1.KeyValue;
ADOTable1DSDesigner5.Value:=  ADOQuery1DSDesigner.AsInteger;
adotable1.post;
adotable1.Close;



adoquery3.Close;
adoquery3.Parameters.ParamByName('n').Value:=ADOQuery2DSDesigner4.AsString;
adoquery3.Parameters.ParamByName('m').Value:=ADOQuery1DSDesigner.AsString;
adoquery3.Open;



end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
 begin
 ADOQuery1.Filtered:=false;
 ADOQuery1.Filter:='';
 ADOQuery1.Filter:='[Дата] > '+
  formatdatetime('YYYY-MM-DD', DateTimePicker1.DateTime) +' and [Дата] < '
  +formatdatetime('YYYY-MM-DD', DateTimePicker2.DateTime);
 ADOQuery1.Filtered:=true;;
 end
 else
 ADOQuery1.Filtered:=false;
 
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
if ADOQuery3DSDesigner5.AsString='' then exit;
adotable1.Open;
adotable1.Locate('Код',ADOQuery3DSDesigner5.AsString, []);
adotable1.Delete;
adotable1.Close;

////
  if  ADOQuery1DSDesigner.AsString='' then exit;
  if ADOQuery2DSDesigner4.AsString='' then exit;

adoquery3.Close;
adoquery3.Parameters.ParamByName('n').Value:=ADOQuery2DSDesigner4.AsString;
adoquery3.Parameters.ParamByName('m').Value:=ADOQuery1DSDesigner.AsString;
adoquery3.Open;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.Open;


end;

procedure TForm2.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if    ADOQuery1DSDesigner.AsString='' then exit;
if    ADOQuery1DSDesigner7.AsString='' then exit;
with (Sender as TDBGrid).Canvas do
   begin
 Brush.Color:=StringToColor(ADOQuery1DSDesigner7.AsString);
 end;
 (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TForm2.DataSource2DataChange(Sender: TObject; Field: TField);
begin
if ADOQuery1KLKOD.AsString='' then exit;
if ADOQuery1DSDesigner5.AsString='' then exit;

adoquery2.Close;
adoquery2.Parameters.ParamByName('n').Value:=ADOQuery1KLKOD.AsString;
adoquery2.Open;

label1.Caption:='Воспитанники "'+ADOQuery1DSDesigner5.AsString+'" группы на данном занятии'
end;

procedure TForm2.DataSource3DataChange(Sender: TObject; Field: TField);
begin
  if  ADOQuery1DSDesigner.AsString='' then exit;
  if ADOQuery2DSDesigner4.AsString='' then exit;

adoquery3.Close;
adoquery3.Parameters.ParamByName('n').Value:=ADOQuery2DSDesigner4.AsString;
adoquery3.Parameters.ParamByName('m').Value:=ADOQuery1DSDesigner.AsString;
adoquery3.Open;

label3.Caption:='Оценки "'+ADOQuery2DSDesigner.AsString+'" на текущем занятии'
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
datetimepicker2.DateTime:=now();
if not DBLookupComboBox1.ListSource.DataSet.IsEmpty then
   DBLookupComboBox1.KeyValue :=  DBLookupComboBox1.ListSource.DataSet.Fields[0].Value;
  end;

procedure TForm2.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

if    ADOQuery3DSDesigner5.AsString='' then exit;
if (Column.Title.Caption<>'Балл') then exit;
with (Sender as TDBGrid).Canvas do
   begin
   if ADOQuery3DSDesigner2.AsString= '1'
   then    Font.Color:= clRed;
         if ADOQuery3DSDesigner2.AsString= '2'
   then    Font.Color:= $00516543;
      if ADOQuery3DSDesigner2.AsString= '3'
   then    Font.Color:= clGreen;
 {     if ADOQuery3DSDesigner2.AsString= '4'
   then    Font.Color:= $00516543;
      if ADOQuery3DSDesigner2.AsString= '5'
   then    Font.Color:= $0005E031;   }
      if ADOQuery3DSDesigner2.AsString> '5'
   then    Font.Color:= $00FF8000;  
 end;



   Column.Grid.DefaultDrawColumnCell(Rect, DataCol, Column, State);


end;

end.


