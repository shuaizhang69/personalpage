#!/bin/bash

# 重新构建并推送脚本

set -e  # 遇到错误立即退出

echo "🚀 开始重新构建并推送..."

# 1. 进入项目目录
cd /root/stellar-harbor-dev

# 2. 清理旧的构建文件
echo "🧹 清理旧文件..."
rm -rf public resources .hugo_build.lock

# 3. 构建项目
echo "🔨 构建项目..."
PATH=/usr/local/bin:$PATH hugo --gc --minify

# 4. 添加所有更改到 Git
echo "📦 添加更改..."
git add -A

# 5. 提交更改
COMMIT_MSG="Rebuild site: $(date '+%Y-%m-%d %H:%M:%S')"
echo "💾 提交: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

# 6. 推送到远程仓库
echo "📤 推送到远程仓库..."
git push origin main

echo "✅ 完成！"
