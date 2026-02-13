#!/bin/bash
# Đường dẫn đến file emoticons.json xịn xò của anh
JSON_FILE="$HOME/.config/wl-kaomoji/emoticons.json"

# Bước 1: Dùng jq để lôi cái 'title' (tên) và 'string' (kaomoji) ra
# Sau đó định dạng lại cho đẹp để hiện lên Rofi
selected=$(jq -r '.emoticons[] | "\(.tags[0]) | \(.string)"' "$JSON_FILE" | wofi -dmenu   "Kaomoji selected")

if [ -n "$selected" ]; then
    # Bước 2: Chỉ lấy phần Kaomoji sau dấu gạch đứng (|)
    
    kaomoji=$(echo "$selected" | awk -F '| ' '{print $NF}')
    
    # Bước 3: Copy vào clipboa    
    echo -n "$kaomoji" | wl-copy
    notify-send "Xong rồi nè!" "Đã copy $kaomoji "
fi
