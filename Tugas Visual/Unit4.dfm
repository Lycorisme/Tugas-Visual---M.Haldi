object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 483
  Top = 298
  Height = 240
  Width = 604
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\Kuliah\SEMESTER IV\VISUAL\po\libmysql.dll'
    Left = 48
    Top = 24
  end
  object Zkategori: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select  *  from kategori')
    Params = <>
    Left = 136
    Top = 24
  end
  object dskategori: TDataSource
    DataSet = Zkategori
    Left = 136
    Top = 96
  end
  object Zsatuan: TZQuery
    Params = <>
    Left = 216
    Top = 24
  end
  object dssatuan: TDataSource
    Left = 216
    Top = 96
  end
  object Zuser: TZQuery
    Params = <>
    Left = 288
    Top = 24
  end
  object Zsupplier: TZQuery
    Params = <>
    Left = 360
    Top = 24
  end
  object Zbarang: TZQuery
    Params = <>
    Left = 432
    Top = 24
  end
  object dsuser: TDataSource
    Left = 288
    Top = 96
  end
  object dssupplier: TDataSource
    Left = 360
    Top = 96
  end
  object dsbarang: TDataSource
    Left = 432
    Top = 96
  end
end
