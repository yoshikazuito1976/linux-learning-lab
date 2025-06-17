#!/bin/bash

FILE="alice.txt"

# 行単位に読み込む
while IFS= read -r line
do
    echo "$line"    # 行を一気に表示
    sleep 0.5       # 次の行に行くまで待つ（ここでテンポ調整）
done < "$FILE"
