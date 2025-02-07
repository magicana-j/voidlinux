#!/bin/sh

# ログファイル格納ディレクトリ作成
if [ ! -d Install-Logs ]; then
    mkdir Install-Logs
fi

set -e

# パッケージリストファイル
PKG_LIST="packages.txt"

# パッケージリストが存在しない場合はエラー
if [ ! -f "$PKG_LIST" ]; then
    echo "Error: $PKG_LIST not found." >&2
    exit 1
fi

# xbps のリポジトリを更新
sudo xbps-install -Su

# パッケージを1つずつインストール
while IFS= read -r pkg; do
    # 空行やコメント行をスキップ
    [ -z "$pkg" ] || [ "${pkg#\#}" != "$pkg" ] && continue

    # すでにインストール済みか確認
    if xbps-query -R "$pkg" >/dev/null 2>&1; then
        echo "[SKIP] $pkg is already installed."
    else
        echo "[INSTALL] Installing $pkg ..."
        sudo xbps-install -y "$pkg" 2>&1 | tee -a "$LOG"
    fi
done < "$PKG_LIST"

echo "Installation process completed!"
