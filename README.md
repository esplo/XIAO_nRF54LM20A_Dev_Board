# XIAO nRF54LM20A Dev Board

XIAO nRF54LM20A のピンをピンヘッダに引き出す開発ボードです。

- `XIAO_nRF54LM20A_solder/`：開発ボード
- `XIAO_Stencil/`：XIAO をリフローで実装するためのステンシル

## XIAO の footprint と symbol の取り込み

Seeed の XIAO の footprint と symbol はリポジトリに含めていません。
Seeed が配布する次の2つの zip をリポジトリのルートの `lib/` に展開し、`lib/New_XIAO_Series_Footprints/` と `lib/XIAO_Series_SCH_Symbols/` を作ってください。

- https://files.seeedstudio.com/wiki/XIAO-KiCad-Library/New_XIAO_Series_Footprints.zip
- https://files.seeedstudio.com/wiki/XIAO-KiCad-Library/XIAO_Series_SCH_Symbols.zip

`./fetch-libs.sh` を使うと、この取得と展開を自動で行えます。

ライブラリを置いたら、それぞれ KiCad で次の手順を行います。

1. Schematic Editor で `Update Symbols from Library` を実行し、`Reset fields if empty in new symbol` を外した状態で全 symbol を更新して、回路図を保存します。
2. PCB Editor で `Update Footprints from Library` を実行し、`Update text layers and visibilities` を外した状態で全 footprint を更新します。
3. `Update PCB from Schematic` を実行し、基板を保存します。

## 発注

JLCPCB 向けのプラグインか通常の手順で Gerber を出力して発注してください。
ステンシルの注文では、`Stencil Aperture Openings` で `1:1 as per Paste Layer` を選び、備考にも同じ指定を書いてください。
