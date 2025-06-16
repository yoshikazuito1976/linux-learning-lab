# ファイル名（例: alice.txt）
FILE="alice.txt"

# 行単位に読み込む
while IFS= read -r line
do
    # 1文字ずつ表示（改行なし）
    for (( i=0; i<${#line}; i++ )); do
        printf "%s" "${line:$i:1}"
        sleep 0.05  # 文字ごとの待ち時間（0.05秒）
    done
    echo    # 行末の改行
    sleep 0.3  # 行ごとの待ち時間（0.3秒）
done < "$FILE"
