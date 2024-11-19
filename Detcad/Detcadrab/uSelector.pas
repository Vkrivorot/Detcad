unit uSelector;// быстрый поиск

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, StdCtrls, ComCtrls, ToolWin, ExtCtrls,db,dbtables,ADODB;

type
  TForm_FastFind = class(TForm)
    Panel1: TPanel;
    ToolBar1: TToolBar;
    ToolButton3: TToolButton;
    Edit1: TEdit;
    ImageList1: TImageList;
    Label1: TLabel;
    Image1: TImage;
    procedure ToolButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
 //    Procedure FastFind(Query: TADOTable;index:Integer;Key:Char=#0);
  private
    { Private declarations }
    FindDataSet: TADOTable;

    FilterStr:String;
    FIndex:Integer;
    procedure FilterRecord(DataSet: TDataSet;var Accept: Boolean);
  public
    { Public declarations }
  end;

var
  Form_FastFind: TForm_FastFind;
 Procedure FastFind(Query: TADOTable;index:Integer;Key:Char=#0);
implementation

{$R *.DFM}



 Procedure FastFind(Query:  TADOTable;index:Integer;Key:Char=#0);
Begin
      key:=#0;
     With Form_FastFind do
     Begin
        if not Assigned(Form_FastFind) then
           Application.CreateForm(TForm_FastFind, Form_FastFind);
        FindDataSet:=Query;
        if not (FindDataSet is  TADOTable) Then Begin free;exit; end;
        if not FindDataSet.Active then Begin free;exit; end;
        if  Form_FastFind.Visible then Begin exit; end;
        FIndex:=Index;
       
        FindDataSet.Filtered:=False;
        FindDataSet.Filter:='';
       Edit1.text:='';
        FilterStr:='';

     //   FindDataSet.onFilterRecord:=Form_FastFind..text;
        FindDataSet.onFilterRecord:=Form_FastFind.FilterRecord;

        Show;
        If Key<>#0 then   Edit1.Perform(WM_CHAR,ord(key),0);
     End;
End;

procedure TForm_FastFind.ToolButton3Click(Sender: TObject);
begin
Close;
end;

procedure TForm_FastFind.Edit1Change(Sender: TObject);
var
Options :TLocateOptions ;
begin
 // TLocateOption = (loCaseInsensitive, loPartialKey);
 // Options = set of loPartialKey;
with FindDataSet do
     Begin
          FilterStr:=Edit1.Text;
             FindDataSet.Filtered:=False;
          FindDataSet.Filter:='';
          FindDataSet.onFilterRecord:=FilterRecord;
         // FindDataSet.;     KeyFields
        // FindDataSet.FieldDefList[1];
             //   FindDataSet.FieldList.Strings
       try      // FindDataSet.
       FindDataSet.Locate(    FindDataSet.FieldList.Strings[FIndex], FilterStr,[loPartialKey, loCaseInsensitive]);
      // Findfirst;
      except
      exit;
      end;
     End;
end;

procedure TForm_FastFind.ToolButton1Click(Sender: TObject);
begin
     FindDataSet.FindNext;
end;

procedure TForm_FastFind.ToolButton2Click(Sender: TObject);
begin
     FindDataSet.FindPrior;
end;

procedure TForm_FastFind.FormShow(Sender: TObject);
begin   FilterStr:='';    Edit1.text:='';
label1.Caption:= 'по полю " '+FindDataSet.FieldList.Strings[FIndex]+'"';
    

      
end;

procedure TForm_FastFind.FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
     if not visible then exit;
     with FindDataSet do
             accept:=POS(AnsiUpperCase(FilterStr),AnsiUpperCase(Fields[FIndex].asString))>0;
end;

procedure TForm_FastFind.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     Case Key of
       27,13:Begin Key:=0;close  end;
       VK_PRIOR,VK_UP:Begin FindDataSet.FindPrior; Key:=0  end;
       VK_NEXT,VK_Down:Begin FindDataSet.FindNext; Key:=0  end;
     End;
end;
end.
