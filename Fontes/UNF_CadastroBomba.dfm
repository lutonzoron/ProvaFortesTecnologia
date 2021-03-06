object FRM_CadastroBomba: TFRM_CadastroBomba
  Left = 0
  Top = 0
  Caption = 'Cadastro de Bombas'
  ClientHeight = 515
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PNL_Fundo: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 515
    Align = alClient
    TabOrder = 0
    object PGC_Bombas: TPageControl
      Left = 1
      Top = 1
      Width = 777
      Height = 469
      ActivePage = TBS_Cadastro
      Align = alClient
      TabOrder = 0
      object TBS_Consulta: TTabSheet
        Caption = 'Consulta'
        object DBG_Bomba: TDBGrid
          Left = 0
          Top = 0
          Width = 769
          Height = 441
          Align = alClient
          DataSource = DTS_Bomba
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_BombaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Width = 233
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCTANQUE'
              Title.Caption = 'Tanque'
              Width = 180
              Visible = True
            end>
        end
      end
      object TBS_Cadastro: TTabSheet
        Caption = 'Cadastro'
        Enabled = False
        ImageIndex = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 769
          Height = 441
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = -2
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object Label2: TLabel
            Left = 8
            Top = 64
            Width = 40
            Height = 13
            Caption = 'Tanque:'
          end
          object DBE_Descricao: TDBEdit
            Left = 8
            Top = 27
            Width = 313
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = DTS_Bomba
            TabOrder = 0
          end
          object DBL_Tanque: TDBLookupComboBox
            Left = 8
            Top = 83
            Width = 313
            Height = 21
            DataField = 'ID_TANQUE'
            DataSource = DTS_Bomba
            KeyField = 'CODIGO_ID'
            ListField = 'DESCRICAO'
            ListSource = DTS_Tanque
            TabOrder = 1
          end
        end
      end
    end
    object PNL_Botoes: TPanel
      Left = 1
      Top = 470
      Width = 777
      Height = 44
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        777
        44)
      object SPB_Novo: TSpeedButton
        Left = 4
        Top = 6
        Width = 85
        Height = 27
        Caption = 'Novo'
        Glyph.Data = {
          56030000424D5603000000000000560200002800000010000000100000000100
          08000000000000010000120B0000120B0000880000008800000000000000FFFF
          FF00FF00FF006E626C00A4676900D8C2C000DCC7C500A0675B00A56B5F00A775
          6B0093807B00DAC1BA00C1836C00B56D4D00BF7A5C00BC826800F8F2EF00B89A
          89009A877D00FBF4F000FAF3EF00D1926D00F7F2EF00DA9D7500D5AF9300D3B4
          9C00EDD8C900FBF4EF00E7AB7900FFB66B00FFB66C00FEC08100FF840200FE83
          0200FF840300FF880800FF880900FF8B0D00FF8E1100FF901300FF901700FF92
          1800FF951F00FF972200FF992700FF9C3000FF9E3300E68F3100FFA03800FFA5
          4400FFA74C00FFAD5400FFAF5900FFB15900FFB05C00E19E5500FFB76C00FEBA
          7200FFBB7400FEC28300FAD1A400E5C09900FF9A2200FFA13500F7A03B00FFA6
          4100FFAA4700F2D5B100F3DABC00F8B55C00E9BD8100EDC28B00EDC79300EECB
          9E00F0D0A700FFF4E500E9BD7F00EDC18200F2C98C00EFC68B00F3CE9700EFCB
          9600F6D3A000F2D0A000F3D5AA00F4DAB500D8C1A000FEEFDA00F2C78200EFC4
          8000EFC48100EBC17F00EBC18000EFC58300E0BB8300EBCFA400F0D5AA00FEE9
          C700FCEACE00F8DDAF00FFE5B000FFE5B200FFE9BC00B6AA9300C9AA6300FFFB
          F000FFFEFB00FFFEF700C0BB8F00FFFFFC00B5C2A30096B58E00457F45002A75
          300048834F00286F3400296D3400306C3A003F7448002272310023703D008EBA
          9D0034B69A0068BDBC0009BAC00000BCC70000BDC60014C6CF0000BDCE0000BC
          CE0000B7D00000B8D7003CC0D70018C0ED000AC0F80019C9FE00020204040404
          0404040404040404040202020461555453514F4D5B5C5C580402020204624443
          4A494847464C4C5A0402020207573933412D2A262320215A04020202074B1F1D
          34312E2B272422590402020209693B3A1E3632302C28255D04020202096D6E6C
          5E3835423F3E294E040202020F01878685847B796F684050040202020F017F7D
          817E8083827C7A520402020215017274757173767077785F0402020215011911
          12030A3D3C1811670402020217016665635660641A0808080402020217010101
          01016A6B0B08372F0D0202021C010101010101010608450E020202021C131B14
          1410161605080C02020202021C15151515151515150802020202}
        OnClick = SPB_NovoClick
      end
      object SPB_Editar: TSpeedButton
        Left = 95
        Top = 6
        Width = 85
        Height = 27
        Caption = 'Editar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFA467698E5D598E5D598E5D598E5D598E5D598E
          5D598E5D598E5D598E5D598E5D598E5D5980504BFF00FFFF00FFFF00FFA46769
          FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD7FEFC4
          8180504BFF00FFFF00FFFF00FFA0675BFEEFDAF6E0C6F2DABCF2D5B2C1C18800
          7000007000BDB672E9BD82E9BD7FEFC48180504BFF00FFFF00FFFF00FFA0675B
          FFF4E5F7E5CF007000C4CA97007000C2C187C0BD80007000BDB66FEABF81EFC4
          8080504BFF00FFFF00FFFF00FFA7756BFFFBF0F8EADC007000007000C4C998F2
          D5B1F0D0A9BFBD80007000EBC28AEFC58380504BFF00FFFF00FFFF00FFA7756B
          FFFFFCFAF0E6007000007000007000F2DABAF2D5B1F0D0A7EECB9DEBC793F2C9
          8C80504BFF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2FAEFE6F8EAD9F7E3CFF6
          E0C5007000007000007000EECC9EF3CE9780504BFF00FFFF00FFFF00FFBC8268
          FFFFFFFFFEFC007000CADABAF7EADAF6E3CFC5CE9F007000007000F0D0A6F6D3
          A080504BFF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFCEE7CC007000CADAB8C9
          D7B0007000C6CC9E007000F4D8B1EBCFA480504BFF00FFFF00FFFF00FFD1926D
          FFFFFFFFFFFFFFFFFFCEE7CC007000007000C9D5B0F8E7D1FBEACEDECEB4B6AA
          9380504BFF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFC
          F6EFFCF3E6EDD8C9A0675BA0675BA0675BA0675BFF00FFFF00FFFF00FFDA9D75
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA0675BE19E55E68F
          31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFDCC7C5A0675BF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FFE7AB79
          FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A0675BC1836CFF00
          FFFF00FFFF00FFFF00FFFF00FFE7AB79CF8E68CF8E68CF8E68CF8E68CF8E68CF
          8E68CF8E68CF8E68A0675BFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SPB_EditarClick
      end
      object SPB_Excluir: TSpeedButton
        Left = 186
        Top = 6
        Width = 85
        Height = 27
        Caption = 'Excluir'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF000000
          7D0000008100031581000A1F83000C239100000CAB000E28AD0041579D00596A
          9F005E72AB004B64B5004C66B7006375AB006779B200000FC9000012C000041F
          C200001AC700051FCB000019CD00001CCD00051FCC00000FDE00001CD100001C
          D400041FD5000015DE00001CD9000019DD000F2DC2001331CB000322DA001130
          D8001133DD000011E500001CE100001CE900001CED000013F0000017F700001C
          F2000013FA00001DFE000322E5000322ED001231E6000222F6000D2DF2000222
          FA000223FE000628FE000A2DFE000F32FE001235FC00163BFD00193EFC003C59
          D4002B4CEB002447F4002346FF002449FB002549FC002A4EFB003658F0003052
          FE003256FC00375AFA00395CFA003E5FFE005875DA00647BDD005D78EA004164
          FA004466FB004062FC004769FA004A6BF8004A6BFC005C79F7005070FB005575
          FD005B7BFF005E7BFE00768BD1007B93DE006B82E0006781E9006983EF007B93
          E5007790EB006F8BFF00738EF800738EFF007D97F7007992FF007B95FC00828F
          B200839CFA00819AFF00849DFF008FA3F2008FA4FF0095AAFC009FB2F6009FB2
          FB00A0B2F200A4B6FE00A9BAFC00B6C1E700BAC4EB00B2C1FC00DDDDD400D1D5
          E500C5CEF500C7D3FF00CAD4FE00CCD7FF00D1DAFF00DCE0F000EEEEE700E5E9
          F600E6EBFF00E9EDFC00EDF0FF00F7F7F400FAF7F200F8FAF700F9FAFE00FBFC
          FF00FEFEFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000002
          020202020200000000000000000606070B0E0D0804010100000000000611597D
          776E6D717009030100000006166A82482116111F477E6103010000065E823A1B
          1D1D191610397F0A01002B2E824F272926261D1D1610567805012B527A352B32
          322F2D2C20161F790B012B5F73335B82828282828257167254012B6375376B82
          828282828265197255012B5D7C4B4B514E45413C3B2E217B46012B4182674545
          3F38342B272358821E01002B6C82634E433D36322A43825A0600002B4B758268
          513C363752826816060000002B4C6F827B76757A825D190600000000002B2B4B
          5F66635130060600000000000000002B2B322B1B0F0000000000}
        OnClick = SPB_ExcluirClick
      end
      object SPB_Gravar: TSpeedButton
        Left = 277
        Top = 6
        Width = 85
        Height = 27
        Caption = 'Gravar'
        Enabled = False
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF97433F97433FB59A9BB59A9BB59A9BB5
          9A9BB59A9BB59A9BB59A9B93303097433FFF00FFFF00FFFF00FFFF00FF97433F
          D66868C66060E5DEDF92292A92292AE4E7E7E0E3E6D9DFE0CCC9CC8F201FAF46
          4697433FFF00FFFF00FFFF00FF97433FD06566C25F5FE9E2E292292A92292AE2
          E1E3E2E6E8DDE2E4CFCCCF8F2222AD464697433FFF00FFFF00FFFF00FF97433F
          D06565C15D5DECE4E492292A92292ADFDDDFE1E6E8E0E5E7D3D0D28A1E1EAB44
          4497433FFF00FFFF00FFFF00FF97433FD06565C15B5CEFE6E6EDE5E5E5DEDFE0
          DDDFDFE0E2E0E1E3D6D0D2962A2AB24A4A97433FFF00FFFF00FFFF00FF97433F
          CD6263C86060C96767CC7272CA7271C66969C46464CC6D6CCA6667C55D5DCD65
          6597433FFF00FFFF00FFFF00FF97433FB65553C27B78D39D9CD7A7A5D8A7A6D8
          A6A5D7A09FD5A09FD7A9A7D8ABABCC666797433FFF00FFFF00FFFF00FF97433F
          CC6667F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC66
          6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
          CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
          6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FF97433F
          CC6667F9F9F9CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDF9F9F9CC66
          6797433FFF00FFFF00FFFF00FF97433FCC6667F9F9F9F9F9F9F9F9F9F9F9F9F9
          F9F9F9F9F9F9F9F9F9F9F9F9F9F9CC666797433FFF00FFFF00FFFF00FFFF00FF
          97433FF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F99743
          3FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SPB_GravarClick
      end
      object SPB_Cancelar: TSpeedButton
        Left = 368
        Top = 6
        Width = 85
        Height = 27
        Caption = 'Cancelar'
        Enabled = False
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF00043E
          9000003A990008479F000141A400094FAF00034BB4003D73B4000C5DCF00035B
          DE00045BDE000F6ADE001169DE00004FE0000052E0000055E0000058E100025C
          E2000662E2000565E5000D67E2000768E7000F6AE0000F6AE500096DE9001069
          E5000B70E9001674E7001176EA001577EA00137AEA001679EA00117AED00147B
          ED00167FEE001878E900287BE7005580B0005B89BC005E8CBF001A82EE001C81
          ED001E87EF001E89F0003584EA003688ED002996F4002A99F4003298F2003599
          F300369CF4003AA0F6004586CF004787D1006392C700599EEF00529EF4005CA0
          EF0041AFFC005EA3F0005DA5F20045B4FE005AB6F80066A7EF0070A9E60064A6
          F20070AFF40077B1F00073B0F40076B2F4007AB5F60076BDF9007FC5FA00809E
          BC0082BCF60088BCF30087C0F60089C4F70081C7FA008EC7F80096C7F7009ECA
          F8009ECFF800B5D0EE00A5DDFD00B7D3F000DED9D500CFDAE600C1DDFA00C4DD
          F900C6E1FA00C9E2FB00CAE5FB00CCE7FB00CBE6FC00CCE6FC00C5EDFF00D9E6
          F000EEEAE700F8F4EF00E3EEF700E6F2FD00E9F3FD00EAF5FE00EFF8FF00F6F4
          F600F8FAF600F8FBFF00F9FDFF00FEFEFF000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000001
          01010101010000000000000000060608343627070302010000000000060A4369
          6155535756250401000000060A516D37191111193963490401000006466D2411
          0F110F110F2D6A2701000B0C6D3711664B0F11595911416205010B3C651B1359
          6D4B596D4B0F146435010B4B5A1C181C5B6D6D4B110F115940010B4D5B282028
          5B6D6D4B0F110F5946010B4766312B5B6D505A6D4B0D196638010B316D482E68
          5120205B590D3F6D1401000B546D3E2F2B281A15112D6D420600000B3A606D4E
          312B2023396D510A060000000B3D546D665B5B656D420A0600000000000B0C33
          474F4C3C16060600000000000000000B0B0B0B0B0B0000000000}
        OnClick = SPB_CancelarClick
      end
      object SPB_Sair: TSpeedButton
        Left = 660
        Top = 6
        Width = 85
        Height = 27
        Anchors = [akTop, akRight]
        Caption = 'Sair'
        Glyph.Data = {
          B6020000424DB602000000000000B60100002800000010000000100000000100
          08000000000000010000120B0000120B0000600000006000000000000000FFFF
          FF00FF00FF00FCD1D3004E1E1F00C54D4E00C9525300C24F5000D4585900C954
          5500CF575800CB555600D75C5D00D55C5D00D05A5B00CF595A00B74F5200B24D
          4E00B64F5000D55E5F00BD535600D75F6000DD636400C2575A00C6595B00E267
          6800DD656600DA636400E3686900DE666700EB6D6E00E96C6D00F2737400F073
          7400EE727300F7777900D1656600F0757600F6797A00F77A7B00FE7F8000FB7E
          7F00FF818200FC7F8000DA6E6F00FF828300FE818200FF838400E5767700E073
          7400E2757600FF868700FF888900CF6E7000CB6C6D00CC6E7000FE8B8C00EB81
          8200E67E7F009C565700FB9A9C00F8AAAB00F7B5B600FAD3D400A64B4B00A94D
          4D00F8787900D76B6B00CF6E6E00824B4B00FAEBC500FCEFC700FFF2CC00FCFB
          CF00FCFBD100FFFFD300FFFFD400FFFFD500FFFFD700E6FCC700A5D8970050D1
          6F0026B149002AB44D001BBB490023B54A002DC7580042C966000CBC410010BB
          430013C1480013BC450016BD480016BC48001CBF4C001EBC4C00020202020202
          0245040202020202020202020202454540410402020202020202020245451207
          05110445454545454502020245080B09061004383C3D3E3E45020202450C0E0F
          0A1404555A5C583E45020202451615130D1704535E5F5B3E45020202451C1A1B
          1D1804525D54593E45020202451E193A3F3704505157563E4502020245201F39
          033504484E4C4F3E4502020245422522212404474D4B4E3E4502020245282726
          234304474D4B4D3E45020202452F2B29282C04474D4B4D3E4502020245342D2A
          2D3104474D4B4D3E450202024545322E333004464A494A3E450202020202453B
          3644044545454545450202020202020245450402020202020202}
        OnClick = SPB_SairClick
        ExplicitLeft = 653
      end
    end
  end
  object FDQ_Bomba: TFDQuery
    Connection = DTM_Modulo.FDConnection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select bomba.codigo_id,'
      '       bomba.descricao,'
      '       bomba.id_tanque'
      ''
      'from bomba')
    Left = 376
    Top = 169
    object FDQ_BombaCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_BombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQ_BombaID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object FDQ_BombaDESCTANQUE: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCTANQUE'
      LookupDataSet = FDQ_Tanque
      LookupKeyFields = 'CODIGO_ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_TANQUE'
      Size = 100
      Lookup = True
    end
  end
  object DTS_Bomba: TDataSource
    DataSet = FDQ_Bomba
    Left = 373
    Top = 233
  end
  object FDQ_Tanque: TFDQuery
    Connection = DTM_Modulo.FDConnection
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'select tanque.codigo_id,'
      '       tanque.descricao,'
      '       tanque.id_combustivel'
      ''
      'from tanque')
    Left = 477
    Top = 177
    object FDQ_TanqueCODIGO_ID: TIntegerField
      FieldName = 'CODIGO_ID'
      Origin = 'CODIGO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_TanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 10
    end
    object FDQ_TanqueID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      Required = True
    end
  end
  object DTS_Tanque: TDataSource
    DataSet = FDQ_Tanque
    Left = 477
    Top = 233
  end
end
