#!/usr/bin/env bash
# 用法: ./scripts/check-prd.sh <prd.md 路径>
# 检查 PRD 是否含必选节，输出缺失节列表

FILE="${1:-}"

if [ -z "$FILE" ] || [ ! -f "$FILE" ]; then
    echo "用法: $0 <path-to-prd.md>"
    exit 1
fi

echo "=== PRD 必选节检查 ==="
echo ""

REQUIRED_SECTIONS=(
    "背景与问题"
    "目标与成功指标"
    "用户与场景"
    "功能需求"
    "范围与边界"
    "验收标准"
)

ALL_FOUND=true

for section in "${REQUIRED_SECTIONS[@]}"; do
    if grep -qE "^## ?${section}" "$FILE" 2>/dev/null; then
        echo "✓ $section"
    else
        echo "✗ 缺失: $section"
        ALL_FOUND=false
    fi
done

echo ""
if [ "$ALL_FOUND" = true ]; then
    echo "✅ 所有必选节完整"
    exit 0
else
    echo "⚠️ 有缺失节，请补充"
    exit 1
fi
