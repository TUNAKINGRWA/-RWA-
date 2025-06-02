#!/bin/bash

# 🌿 碳汇稳定币RWA平台 - 一键部署脚本

echo "🌿 开始部署碳汇稳定币RWA平台..."
echo "======================================"

# 检查Git是否安装
if ! command -v git &> /dev/null; then
    echo "❌ 错误：请先安装Git"
    exit 1
fi

# 检查是否已经初始化git
if [ ! -d ".git" ]; then
    echo "📦 初始化Git仓库..."
    git init
    echo "✅ Git仓库初始化完成"
fi

# 添加文件
echo "📁 添加项目文件..."
git add carbon_stabilized_rwa_platform.html
git add index.html
git add 碳汇稳定币RWA平台部署指南.md
git add deploy_carbon_platform.sh

# 检查是否有文件被添加
if git diff --cached --quiet; then
    echo "⚠️  没有检测到新文件变化"
else
    echo "✅ 文件添加成功"
fi

# 提交更改
echo "💾 提交更改..."
git commit -m "🚀 部署全球首创碳汇稳定币RWA平台

- 添加完整平台方案演示
- 添加精美项目主页
- 全球首创碳本位稳定币
- 万亿级碳资产交易平台"

echo "✅ 提交完成"

# 获取用户的GitHub信息
echo ""
echo "📝 请提供GitHub信息："
read -p "GitHub用户名: " USERNAME

if [ -z "$USERNAME" ]; then
    echo "❌ 用户名不能为空"
    exit 1
fi

# 询问仓库名称
echo ""
echo "📋 推荐仓库名称: carbon-stabilized-rwa-platform"
read -p "确认仓库名称 (直接回车使用推荐名称): " REPO_NAME

if [ -z "$REPO_NAME" ]; then
    REPO_NAME="carbon-stabilized-rwa-platform"
fi

# 设置远程仓库
REMOTE_URL="https://github.com/$USERNAME/$REPO_NAME.git"

echo ""
echo "🔗 设置远程仓库..."
echo "仓库地址: $REMOTE_URL"

# 检查是否已经有远程仓库
if git remote | grep -q "^origin$"; then
    echo "🔄 更新现有远程仓库地址..."
    git remote set-url origin $REMOTE_URL
else
    echo "➕ 添加远程仓库..."
    git remote add origin $REMOTE_URL
fi

echo "✅ 远程仓库设置完成"

# 推送到GitHub
echo ""
echo "⬆️  推送到GitHub..."
git branch -M main

if git push -u origin main; then
    echo ""
    echo "🎉 部署成功！"
    echo "======================================"
    echo ""
    echo "📱 您的碳汇稳定币RWA平台已成功部署！"
    echo ""
    echo "🌐 访问地址："
    echo "   主页: https://$USERNAME.github.io/$REPO_NAME/"
    echo "   完整方案: https://$USERNAME.github.io/$REPO_NAME/carbon_stabilized_rwa_platform.html"
    echo ""
    echo "📂 GitHub仓库："
    echo "   https://github.com/$USERNAME/$REPO_NAME"
    echo ""
    echo "⚙️  启用GitHub Pages："
    echo "   1. 访问: https://github.com/$USERNAME/$REPO_NAME/settings/pages"
    echo "   2. 在Source下选择: Deploy from a branch"
    echo "   3. 选择Branch: main"
    echo "   4. 点击Save"
    echo ""
    echo "⏱️  等待1-2分钟后即可访问您的网站！"
    echo ""
    echo "🔥 分享文案："
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🌿 全球首创碳汇稳定币RWA平台发布！"
    echo ""
    echo "💎 突破传统美元稳定币局限"
    echo "🚀 创造人类货币史第三次革命"
    echo "💰 万亿级碳资产交易平台"
    echo ""
    echo "🌐 在线演示: https://$USERNAME.github.io/$REPO_NAME/"
    echo ""
    echo "立即查看完整方案 👆"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
else
    echo ""
    echo "❌ 推送失败！"
    echo ""
    echo "📋 可能的解决方案："
    echo "1. 确保您的GitHub用户名正确"
    echo "2. 确保仓库 '$REPO_NAME' 已在GitHub上创建"
    echo "3. 检查GitHub访问权限"
    echo ""
    echo "🔧 手动创建仓库："
    echo "   访问: https://github.com/new"
    echo "   仓库名: $REPO_NAME"
    echo "   设置为Public"
    echo ""
    echo "🔄 然后重新运行此脚本"
fi 