unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, DBCtrls, StdCtrls, Buttons;

type
  Tstudents = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Image2: TImage;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    btn1: TBitBtn;
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  students: Tstudents;

implementation

uses Unit1, Unit10, Unit11, Unit12, Unit13, Unit14, Unit2, Unit3, Unit4,
  Unit5, Unit6, Unit7, Unit8, Unit9, Unit20;

{$R *.dfm}

procedure Tstudents.DBLookupComboBox1Click(Sender: TObject);
begin
  DM.z_stud.Filtered:=False;
  DM.z_stud.Filter:='id_������ ='''+IntToStr(DBLookupComboBox1.KeyValue)+'''';
  DM.z_stud.Filtered:=True;
end;

procedure Tstudents.BitBtn1Click(Sender: TObject);
begin
  DM.z_stud.Sort:='�������';
end;

procedure Tstudents.BitBtn2Click(Sender: TObject);
begin
  DM.z_stud.Filtered:=False;
  DM.z_stud.Filter:='';
  DM.z_stud.Filtered:=True;
end;

procedure Tstudents.Edit1Change(Sender: TObject);
begin
if Edit1.Text<>'' then
begin
Dm.z_stud.Filter:='������� LIKE ' + #39 + edit1.text + '%' + #39;
Dm.z_stud.Filtered:=True;
end
else
Dm.z_stud.Filtered:=false;
end;

procedure Tstudents.BitBtn4Click(Sender: TObject);
begin
DM.tblpolzovatel.Insert;
reg.panel1.Visible:=False;
Reg.Showmodal;
reg.BitBtn4.Visible:=True;
end;

procedure Tstudents.BitBtn3Click(Sender: TObject);
begin
students.Close;
DM.z_stud.Active:=False;
end;

procedure Tstudents.btn1Click(Sender: TObject);
begin
 Otchet_stud.QuickRep1.Previewmodal;
end;

end.
