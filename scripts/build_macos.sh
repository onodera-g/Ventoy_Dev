#!/bin/bash

# 出力ディレクトリの作成
mkdir -p dist/macos-style

# フォントの合体ビルド
# 1番目に Inter（英語）、2番目に Noto Sans（日本語）を指定します
grub-mkfont \
    --size=20 \
    --range=0x0000-0x052f,0x3000-0x30ff,0x4e00-0x9faf \
    --output=dist/macos-style/font.pf2 \
    src/common/fonts/Inter_24pt-Regular.ttf \
    src/common/fonts/NotoSansJP-Regular.ttf

# 設定ファイルのコピー
if [ -f src/themes/macos-style/theme.txt ]; then
    cp src/themes/macos-style/theme.txt dist/macos-style/theme.txt
fi

# 背景画像のコピー
if [ -f src/themes/macos-style/background.png ]; then
    cp src/themes/macos-style/background.png dist/macos-style/background.png
fi

echo "Combined font build complete: dist/macos-style/font.pf2"
