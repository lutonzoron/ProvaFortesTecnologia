object FRM_Principal: TFRM_Principal
  Left = 0
  Top = 0
  Caption = 'Gerenciador de Postos de Combust'#237'vel'
  ClientHeight = 682
  ClientWidth = 976
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 136
    Top = 360
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object CadastrodeCombustvel1: TMenuItem
        Caption = 'Cadastro de &Combust'#237'vel'
        OnClick = CadastrodeCombustvel1Click
      end
      object CadastrodeTanque1: TMenuItem
        Caption = 'Cadastro de &Tanque'
        OnClick = CadastrodeTanque1Click
      end
      object CadastrodeBomba1: TMenuItem
        Caption = 'Cadastro de &Bomba'
        OnClick = CadastrodeBomba1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Paramtros1: TMenuItem
        Caption = '&Par'#226'metros'
        OnClick = Paramtros1Click
      end
    end
    object N2: TMenuItem
      Caption = '&Lan'#231'amentos'
      object Abastecimentos1: TMenuItem
        Caption = '&Abastecimentos'
        OnClick = Abastecimentos1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Relatriode1: TMenuItem
        Caption = 'Relat'#243'rio de &Abastecimento'
        OnClick = Relatriode1Click
      end
    end
  end
end
