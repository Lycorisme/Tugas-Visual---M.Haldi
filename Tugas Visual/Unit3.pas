unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn); // Nama prosedur diperbaiki
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('insert into kategori values(null, "' + edt1.Text + '")');
  DataModule4.Zkategori.ExecSQL;
  DataModule4.Zkategori.SQL.Clear;
  DataModule4.Zkategori.SQL.Add('Select * from kategori');
  DataModule4.Zkategori.Open;
  ShowMessage('Data berhasil di Simpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
  //kode update
  with DataModule4.Zkategori do
  begin
    SQL.Clear;
    SQL.Add('update kategori set name = "' + edt2.Text + '" where id= "' + a + '"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('Select * from kategori');
    Open;
  end;
  ShowMessage('Data Berhasil Diupdate!');
end;


procedure TForm3.dbgrd1CellClick(Column: TColumn); // Nama prosedur diperbaiki
begin
  edt1.Text := DataModule4.Zkategori.Fields[1].AsString;
  a := DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  //kode delete
  with DataModule4.Zkategori do
  begin
    SQL.Clear;
    SQL.Add('delete from kategori where id= "' + a + '"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('Select * from kategori');
    Open;
  end;
  ShowMessage('Data berhasil di Hapus!');
end;


end.
