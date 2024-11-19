unit uZanatie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, ExtCtrls, Grids, DBGrids, Mask,
  Buttons;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TMemoField;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    ADOTable1DSDesigner4: TWideStringField;
    ColorDialog1: TColorDialog;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.BitBtn1Click(Sender: TObject);
begin

try
    ColorDialog1.Color:=stringtocolor(DBEdit1.Field.AsVariant);
    except // попытка загрузить цвет из базы в диалог
    end;
If (ColorDialog1.Execute) then
       //     'Закрашиваем форму
       //    'ColorDialog1.Color
                         begin
     ADOTable1.Edit;
     if  ColorDialog1.Color=clwhite then
     begin
       MessageBox(Application.Handle,'Данный цвет используется как разделитель','Недопустимый выбор', MB_OK);
     exit;
     end;
image1.Canvas.Brush.Color:=ColorDialog1.Color;
image1.Canvas.FillRect(Rect(0,0,50,50));
ADOTable1DSDesigner4.AsString:=ColorToString(ColorDialog1.Color);
                     end;
end;

procedure TForm8.DataSource1DataChange(Sender: TObject; Field: TField);
begin
 if dbgrid1.EditorMode then exit;
 if ADOTable1DSDesigner4.AsString='' then begin
image1.Canvas.Brush.Color:=Clwhite;
image1.Canvas.FillRect(Rect(0,0,50,50));
 exit;
 end;
image1.Canvas.Brush.Color:=StringToColor(ADOTable1DSDesigner4.AsString);
image1.Canvas.FillRect(Rect(0,0,50,50));
end;

end.
