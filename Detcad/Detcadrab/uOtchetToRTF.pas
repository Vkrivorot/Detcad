unit uOtchetToRTF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DBCtrls,Printers;

type
  TForm5 = class(TForm)
    SaveDialog1: TSaveDialog;
    DBRichEdit1: TRichEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PrintDialog1: TPrintDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
If SaveDialog1.Execute Then
Begin
DBRichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
end;
      end;

      
procedure PrintStrings(Strings: TStrings);
var
 Prn: TextFile;
 i: word;
begin
 AssignPrn(Prn);
   try
    Rewrite(Prn);
     try
       for i := 0 to Strings.Count - 1 do
        writeln(Prn, Strings.Strings[i]);
         finally
          CloseFile(Prn);
       end;
      except
   on EInOutError do
      MessageDlg('Ошибка печати текста.', mtError, [mbOk], 0);
  end;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
     PrintStrings(DBRichEdit1.Lines);
end;

end.
