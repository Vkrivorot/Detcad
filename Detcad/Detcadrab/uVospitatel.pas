unit uVospitatel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons , uselector,
  ExtDlgs;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TWideStringField;
    ADOTable1DSDesigner4: TDateTimeField;
    ADOTable1DSDesigner5: TWideStringField;
    ADOTable1DSDesigner6: TWideStringField;
    ADOTable1DSDesigner7: TWideStringField;
    ADOTable1DSDesigner8: TBooleanField;
    ADOTable1DSDesigner9: TBooleanField;
    ADOTable1DSDesigner10: TBlobField;
    GroupBox2: TGroupBox;
    DBImage1: TDBImage;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    SavePictureDialog1: TSavePictureDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ADOTable1AfterInsert(DataSet: TDataSet);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
//Вызов модуля быстрого поиска
   if not assigned(DBGrid1.SelectedField) then exit;
  // if (key in [#13,#27]) then exit;
   FastFind(ADOTable1, // Query в котором происходит поиск
          adotable1.FieldList.IndexOf(dbgrid1.SelectedField.FieldName)
, // Номер колонки в которой искать
            '*'); // Первый введенный символ
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
begin
 if SavePictureDialog1.Execute then
  
    DBImage1.Picture.SaveToFile(SavePictureDialog1.FileName+'.bmp');
end;




procedure TForm3.BitBtn2Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
      ADOtable1.Edit;
       TBLOBField(ADOtable1.FieldByName('Фото')).LoadFromFile(OpenPictureDialog1.FileName);
       ADOtable1.Post;
       end;
       end;

procedure TForm3.ADOTable1AfterInsert(DataSet: TDataSet);
begin
   ADOTable1DSDesigner8.Value:=FALSE;
      ADOTable1DSDesigner9.Value:=FALSE;
end;

end.
