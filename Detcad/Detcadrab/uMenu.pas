unit uMenu;    //      модуль главной формы

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, Grids, DBGrids, ExtCtrls, DBCtrls, Calendar,
  ComCtrls, XPMan, StdCtrls, RpCon, RpConDS, RpDefine, RpRave, ExtDlgs,
  Buttons, Menus,ComObj, Math,StrUtils, Mask;

type         //  типы обьекто созданные конструктором форм делфи
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    ADOConnection1: TADOConnection;
    XPManifest2: TXPManifest;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
      procedure ADOTable1DSDesigner3SetText(Sender: TField;
      const Text: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure c1Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);

  private
    { Private declarations }
  public
  procedure GridToExcel( DBGridv : TDBGrid);
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uJournalList, uOcenka,  uVopitanik, uOtchetToRTF, uGroup, uAttestat,
  uVospitatel, uZanatie, uKabinet, uZanatia, uUspevaemost;



{$R *.dfm}

procedure TForm1.ADOTable1DSDesigner3SetText(Sender: TField;
//  при выборе  конкретного экземпляра  нужно убрать из его названия символ : изаписать в поле
//  а в базу записать его код
  const Text: String);
  var a:integer;
begin

   if text='' then  begin Sender.AsInteger := 1  ; exit; end;
  a:=  Pos(':', text) ;
  if a<=0 then begin Sender.AsInteger := 1  ; exit; end

   else
        Sender.AsInteger:=StrToInt( Copy(text,1, a-1) );

        //перечитать таблицу



end;








procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);   // вопрос о закрытии программы
begin
if MessageDlg('Закрыть программу ? ', mtConfirmation,
    [mbOk, mbCancel], 0) = mrCancel then
    CanClose := False else
    application.Terminate;
end;


/////
//Далее идут вызовы других форм по нажатию на элементы управления
//////
procedure TForm1.c1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
form10.show;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
form2.show;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
//   adoquery1.Close;
//   adoquery1.Open;

end;

procedure  TForm1.GridToExcel( DBGridv : TDBGrid);
const
  //Знак переноса строки.
  Cr                : String = Char(13) + Char(10);//Ширина ячейки в RTF представлении таблицы.

  //Длина левого и правого поля в ячейке RTF таблицы.
  CellIndent        : Integer = 50;
var

  
    CellWidth         : Integer ;
  //Индекс столбца таблицы.
  ColNum  : Integer;
  //Индекс строки таблицы.
  RowNum  : Integer;
  //Строка содержащая RTF текст.
  StrRtf  : String;
  //Счётчик.
 col, row: Integer;
 st,sline: string;
 mem: TRichEdit;
 a,i,j: Integer;

  bm: TBookmark;
begin
if DBGridv.FieldCount=0 then  exit;

  Screen.Cursor := crHourglass;// убираем перемещение курсора по датагриду вслед за движением курсора рекордсета
  DBGridv.DataSource.DataSet.DisableControls;
 bm := DBGridv.DataSource.DataSet.GetBookmark;
  DBGridv.DataSource.DataSet.First;

 // Сперва отправляем данные в memo
  // работает быстрее, чем отправлять их напрямую в Excel
  mem := form5.DBRichEdit1;
 mem.Font.Pitch:=fpFixed;
 mem.Clear;

      /////////////
  CellWidth:=3000;
  //Начало RTF документа.
  StrRtf := '{\rtf1\ansi\ansicpg1251' + Cr;
  //Добавляем в RTF документ строки таблицы.
  for RowNum := -1 to DBGridv.DataSource.DataSet.RecordCount-1 do begin

    //Начало очередной строки в RTF таблице.
    StrRtf := StrRtf + '\trowd\trgaph' + IntToStr(CellIndent) + CR;

    //Описания ячеек RTF строки.
    i := 0;
    for ColNum := 0 to DBGridv.FieldCount-1 do begin
    if i<1 then CellWidth:=3000  else CellWidth:=3000;

      Inc(i);
      StrRtf :=
        StrRtf
        + '\clbrdrt\brdrs\clbrdrl\brdrs\clbrdrb\brdrs\clbrdrr\brdrs\cellx'
        + IntToStr(i*CellWidth) + Cr
      ;
    end;
 
    //Конец описания ячеек RTF строки.
    StrRtf := StrRtf + '\pard\intbl' + Cr;
 
    //Данные ячеек RTF строки.
    for ColNum := 0 to DBGridv.FieldCount-1 do begin
          if RowNum=-1 then
          StrRtf := StrRtf + ' {\b'+LeftStr(DBGridv.Fields[colnum].DisplayLabel,20)+ '} ' + '\cell' + Cr
          else
          StrRtf := StrRtf + LeftStr(DBGridv.Fields[colnum].DisplayText,22) + '\cell' + Cr;
    end;

   if RowNum<>-1 then
   DBGridv.DataSource.DataSet.Next;

    //Завершение строки RTF таблицы.
    StrRtf := StrRtf + '\row' + Cr;
  end;

  //Конец RTF документа.
  StrRtf := StrRtf + '}';

      /////////////
      mem.Text:=StrRtf;
    //  mem.Lines.Text:=(StrRtf);
      mem.Refresh;
      //  mem.SelectAll;
//  mem.CopyToClipboard;
    Screen.Cursor := crDefault;
  DBGridv.DataSource.DataSet.GotoBookmark(bm);
  DBGridv.DataSource.DataSet.FreeBookmark(bm);
  DBGridv.DataSource.DataSet.EnableControls;

  form5.Show;
    end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
form10.show;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   form4.Show;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
form6.show;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
form9.show;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
form11.show;
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
form8.show;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
form12.show;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
form13.show;
end;

end.
