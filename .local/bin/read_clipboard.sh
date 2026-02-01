#!/bin/bash
# Dừng piper nếu đang đọc dở
pkill -f "piper --model"

# Lấy nội dung từ clipboard (Wayland)
TEXT=$(wl-paste)

if [ -z "$TEXT" ]; then
    exit 1
fi

# Đọc
echo "$TEXT" | piper --model ~/.local/share/piper-voices/vi_VN.onnx --output_raw | mpv --no-terminal --cache=yes -
