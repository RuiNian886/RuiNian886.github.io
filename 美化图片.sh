#!/bin/bash

SRC_FILE="/data/data/com.termux/files/home/测试项目/美化图片/放入您的图片/图片.jpeg"       # 文件a的路径
SRC_DIR="/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownloadV3/LoadingBG/"         # 文件夹b的路径
OUTPUT_DIR="/data/data/com.termux/files/home/测试项目/美化图片/美化图片输出" # 输出目录路径

if [ ! -f "$SRC_FILE" ]; then
    echo "错误：源文件 '$SRC_FILE' 不存在。"
    exit 1
fi

if [ ! -d "$SRC_DIR" ]; then
    echo "错误：源文件夹 '$SRC_DIR' 不存在。"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"


cp "$SRC_DIR"/* "$OUTPUT_DIR/"


for file in "$OUTPUT_DIR"/*; do
    if [ -f "$file" ]; then
        
        cat "$SRC_FILE" > "$file"
        echo "已美化文件: $file"
    fi
done

echo "所有文件处理完成。"
