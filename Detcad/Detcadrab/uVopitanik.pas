unit uVopitanik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, ADODB, ExtCtrls, Grids, DBGrids, Buttons,
  Mask, uselector, ExtDlgs;

type
  TForm4 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    ADOTable1: TADOTable;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    BitBtn1: TBitBtn;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TWideStringField;
    ADOTable1DSDesigner3: TWideStringField;
    ADOTable1DSDesigner4: TWideStringField;
    ADOTable1DSDesigner5: TWideStringField;
    ADOTable1DSDesigner6: TWideStringField;
    ADOTable1DSDesigner7: TWideStringField;
    ADOTable1DSDesigner8: TWideStringField;
    ADOTable1DSDesigner9: TBooleanField;
    ADOTable1DSDesigner10: TBlobField;
    ADOTable1DSDesigner11: TIntegerField;
    GroupBox2: TGroupBox;
    DBImage1: TDBImage;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    procedure BitBtn3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses uMenu, uVospitatel, uGroup;

{$R *.dfm}

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
 if SavePictureDialog1.Execute then
  
    DBImage1.Picture.SaveToFile(SavePictureDialog1.FileName+'.bmp');
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
//Вызов модуля быстрого поиска
   if not assigned(DBGrid1.SelectedField) then exit;
  // if (key in [#13,#27]) then exit;
   FastFind(ADOTable1, // Query в котором происходит поиск
          adotable1.FieldList.IndexOf(dbgrid1.SelectedField.FieldName)
, // Номер колонки в которой искать
            '*'); // Первый введенный символ
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute then
begin
      ADOtable1.Edit;
       TBLOBField(ADOtable1.FieldByName('Фото')).LoadFromFile(OpenPictureDialog1.FileName);
       ADOtable1.Post;
       end;
end;

end.
