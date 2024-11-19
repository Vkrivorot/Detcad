unit uJournalList; // отчеты

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, DB, ADODB, TeeProcs, TeEngine,
  Chart, DbChart, ExtCtrls, Series, Grids, DBGrids, uPropis, Spin;

type
  TForm10 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    BitBtn2: TBitBtn;
    DBGrid3: TDBGrid;
    GroupBox4: TGroupBox;
    BitBtn4: TBitBtn;
    DBGrid4: TDBGrid;
    GroupBox5: TGroupBox;
    BitBtn5: TBitBtn;
    DBGrid5: TDBGrid;
    GroupBox6: TGroupBox;
    BitBtn6: TBitBtn;
    DBGrid6: TDBGrid;
    GroupBox7: TGroupBox;
    BitBtn7: TBitBtn;
    DBGrid7: TDBGrid;
    ADOQuery2: TADOQuery;
    ADOQuery2DSDesigner: TWideStringField;
    ADOQuery2DSDesigner2: TIntegerField;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
    ADOQuery3DSDesigner: TWideStringField;
    ADOQuery3DSDesigner4: TFloatField;
    ADOQuery3DSDesigner5: TFloatField;
    ADOQuery3DSDesigner6: TIntegerField;
    ADOQuery3DSDesigner7: TIntegerField;
    DataSource3: TDataSource;
    ADOQuery4: TADOQuery;
    ADOQuery4DSDesigner: TWideStringField;
    ADOQuery4DSDesigner2: TFloatField;
    ADOQuery4DSDesigner3: TFloatField;
    ADOQuery4DSDesigner4: TIntegerField;
    ADOQuery4DSDesigner5: TIntegerField;
    ADOQuery4DSDesigner6: TIntegerField;
    DataSource4: TDataSource;
    ADOQuery5: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery6: TADOQuery;
    ADOQuery6DSDesigner: TWideStringField;
    ADOQuery6DSDesigner2: TFloatField;
    ADOQuery6DSDesigner3: TFloatField;
    ADOQuery6DSDesigner4: TIntegerField;
    ADOQuery6DSDesigner5: TIntegerField;
    ADOQuery6DSDesigner6: TIntegerField;
    DataSource6: TDataSource;
    ADOQuery7: TADOQuery;
    ADOQuery7DSDesigner: TWideStringField;
    ADOQuery7DSDesigner2: TFloatField;
    ADOQuery7DSDesigner3: TFloatField;
    ADOQuery7DSDesigner4: TIntegerField;
    ADOQuery7DSDesigner5: TIntegerField;
    ADOQuery7DSDesigner6: TIntegerField;
    DataSource7: TDataSource;
    GroupBox15: TGroupBox;
    GroupBox20: TGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    SpinEdit1: TSpinEdit;
    CheckBox6: TCheckBox;
    GroupBox16: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    GroupBox17: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox3: TCheckBox;
    GroupBox14: TGroupBox;
    GroupBox8: TGroupBox;
    BitBtn8: TBitBtn;
    GroupBox9: TGroupBox;
    BitBtn9: TBitBtn;
    GroupBox10: TGroupBox;
    BitBtn10: TBitBtn;
    GroupBox11: TGroupBox;
    BitBtn11: TBitBtn;
    GroupBox12: TGroupBox;
    BitBtn12: TBitBtn;
    GroupBox13: TGroupBox;
    BitBtn13: TBitBtn;
    ADOQuery5DSDesigner: TFloatField;
    ADOQuery5DSDesigner2: TFloatField;
    ADOQuery5DSDesigner3: TIntegerField;
    ADOQuery5DSDesigner4: TIntegerField;
    ADOQuery5DSDesigner5: TIntegerField;
    ADOQuery5DSDesigner6: TWideStringField;
    ADOQuery1DSDesigner: TWideStringField;
    ADOQuery1DSDesigner2: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure chouseG(chart: TDBChart);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses uMenu, uOtchetToRTF, uJournal;

{$R *.dfm}
procedure TForm10.chouseG(chart: TDBChart);
begin
 ///
 try
chart.Series[0].Free;
if form10.RadioButton1.Checked then
 begin
 chart.AddSeries(TPieSeries.Create(chart)) ;

 end
 else
 begin
chart.AddSeries(TBarSeries.Create(chart));
 chart.Series[0].GalleryChanged3D(false);
chart.AxisVisible:=true;
end;

  chart.Series[0].GalleryChanged3D(form10.checkbox6.Checked);

   // перспектива
 chart.Chart3DPercent:=form10.spinedit1.Value;
 chart.View3dOptions.Rotation:=form10.spinedit2.Value;
 //chart.Series[0].GalleryChanged3D(true);
 // легегнда
 if (form10.checkbox2.Checked) then
chart.Series[0].ShowInLegend:=true else
chart.Series[0].ShowInLegend:=false;


 // разноцветный
  if (form10.checkbox3.Checked) then
chart.Series[0].ColorEachPoint:=true
else
chart.Series[0].ColorEachPoint:=false;





 chart.Series[0].Marks.Visible:=form10.checkbox7.Checked;
  // zoom


  except
  exit;
  end;
///

end;
procedure TForm10.FormActivate(Sender: TObject);
begin
form5.DBRichEdit1.Font.Size:=12;
form5.Caption:='   Статистика :  ';
end;

procedure TForm10.BitBtn3Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery1.Close;
Adoquery1.open;
//form5.DBRichEdit1.Clear;
form1.GridToExcel(dbgrid1);

end;

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery4.Close;
Adoquery4.open;

form1.GridToExcel(dbgrid3);

end;

procedure TForm10.BitBtn5Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery6.Close;
Adoquery6.open;

form1.GridToExcel(dbgrid5);


end;

procedure TForm10.BitBtn7Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery2.Close;
Adoquery2.open;

form1.GridToExcel(dbgrid7);

end;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery3.Close;
Adoquery3.open;
//form5.DBRichEdit1.Clear;
form1.GridToExcel(dbgrid2);

end;

procedure TForm10.BitBtn4Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery5.Close;
Adoquery5.open;

form1.GridToExcel(dbgrid4);
end;

procedure TForm10.BitBtn6Click(Sender: TObject);
begin
form5.Caption:=form5.Caption+(sender as TBitBtn).Caption   ;
Adoquery7.Close;
Adoquery7.open;

form1.GridToExcel(dbgrid6);
end;

procedure TForm10.BitBtn8Click(Sender: TObject);
begin
 chouseG(form7.DBChart1 );
form7.Caption:= (sender as TBitBtn).Caption   ;
 with form7 do
 begin
adoquery2.close;
adoquery2.open;

ADOQuery2.First;
DBChart1.Series[0].Clear;
while not ADOQuery2.Eof do begin

DBChart1.Series[0].Add(ADOQuery2.Fields[1].Value,ADOQuery2.Fields[0].Value);

ADOQuery2.Next;
end;
 show;
end;


end;

procedure TForm10.BitBtn9Click(Sender: TObject);
begin
 chouseG(form7.DBChart1 );
form7.Caption:= (sender as TBitBtn).Caption   ;
 with form7 do
 begin
adoquery3.close;
adoquery3.open;

ADOQuery3.First;
DBChart1.Series[0].Clear;
while not ADOQuery3.Eof do begin

DBChart1.Series[0].Add(ADOQuery3.Fields[4].Value,ADOQuery3.Fields[0].Value);

ADOQuery3.Next;
end;
 show;
end;

end;

procedure TForm10.BitBtn10Click(Sender: TObject);
begin
 chouseG(form7.DBChart1 );
form7.Caption:= (sender as TBitBtn).Caption   ;
 with form7 do
 begin
adoquery4.close;
adoquery4.open;

ADOQuery4.First;
DBChart1.Series[0].Clear;
while not ADOQuery4.Eof do begin

DBChart1.Series[0].Add(ADOQuery4.Fields[2].Value,ADOQuery4.Fields[0].Value);

ADOQuery4.Next;
end;
 show;
end;
end;

procedure TForm10.BitBtn11Click(Sender: TObject);
begin
 chouseG(form7.DBChart1 );
form7.Caption:= (sender as TBitBtn).Caption   ;
 with form7 do
 begin
adoquery5.close;
adoquery5.open;

ADOQuery5.First;
DBChart1.Series[0].Clear;
while not ADOQuery5.Eof do begin

DBChart1.Series[0].Add(ADOQuery5.Fields[4].Value,ADOQuery5.Fields[5].Value);

ADOQuery5.Next;
end;
 show;
end;
end;

procedure TForm10.BitBtn12Click(Sender: TObject);
begin
 chouseG(form7.DBChart1 );
form7.Caption:= (sender as TBitBtn).Caption   ;
 with form7 do
 begin
adoquery6.close;
adoquery6.open;

ADOQuery6.First;
DBChart1.Series[0].Clear;
while not ADOQuery6.Eof do begin

DBChart1.Series[0].Add(ADOQuery6.Fields[1].Value,ADOQuery6.Fields[0].Value);

ADOQuery6.Next;
end;
 show;
end;
end;

procedure TForm10.BitBtn13Click(Sender: TObject);
begin
 chouseG(form7.DBChart1 );
form7.Caption:= (sender as TBitBtn).Caption   ;
 with form7 do
 begin
adoquery7.close;
adoquery7.open;

ADOQuery7.First;
DBChart1.Series[0].Clear;
while not ADOQuery7.Eof do begin

DBChart1.Series[0].Add(ADOQuery7.Fields[1].Value,ADOQuery7.Fields[0].Value);

ADOQuery7.Next;
end;
 show;
end;
end;

end.
