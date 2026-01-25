#!/bin/bash

# macOS Style Theme ビルドスクリプト
# src/macos-style に font.pf2 を生成し、ventoy にコピー

# フォントの合体ビルド（日本語対応）
# 英語・記号 + 日本語（CJK Unified Ideographs）
# フォントサイズ: 28pt
grub-mkfont \
    --size=28 \
    --name="RubikStorm" \
    --range=0x0000-0x00ff,0x3040-0x309f,0x30a0-0x30ff,0x4e00-0x9fff \
    --output=src/macos-style/RubikStorm.pf2 \
    src/fonts/RubikStorm-Regular.ttf

# ventoy にコピー
mkdir -p ventoy/theme/macos-style
cp src/macos-style/RubikStorm.pf2 ventoy/theme/macos-style/RubikStorm.pf2
cp src/macos-style/theme.txt ventoy/theme/macos-style/theme.txt
cp src/macos-style/background.jpg ventoy/theme/macos-style/background.jpg

echo "✓ Font build complete: src/macos-style/RubikStorm.pf2"
echo "✓ Theme copied to: ventoy/theme/macos-style/"
