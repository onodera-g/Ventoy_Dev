#!/bin/bash

# マOS Style Theme ビルドスクリプト
# 軽量版（英数 + ひらがな + カタカナのみ）

# フォント: NotoSans Regular 14pt
grub-mkfont \
    --size=14 \
    --name="NotoSans14" \
    --range=0x0000-0x00ff,0x3040-0x309f,0x30a0-0x30ff \
    --output=src/macos-style/NotoSans14.pf2 \
    src/fonts/NotoSans-Regular.ttf

# ventoy にコピー
mkdir -p ventoy/theme/macos-style
cp src/macos-style/NotoSans14.pf2 ventoy/theme/macos-style/NotoSans14.pf2
cp src/macos-style/theme.txt ventoy/theme/macos-style/theme.txt
cp src/macos-style/background.jpg ventoy/theme/macos-style/background.jpg
cp src/macos-style/ventoy.json ventoy/theme/macos-style/ventoy.json

echo "✓ Font build complete:"
echo "  - NotoSans14.pf2 (Regular 14pt)"
echo "✓ Theme copied to: ventoy/theme/macos-style/"
