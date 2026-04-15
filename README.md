# fzx_prd_doc

<div align="center">

[![GitHub](https://img.shields.io/badge/GitHub-fzx--prd--doc-black?logo=github)](https://github.com/ai-fzx/fzx_prd_doc)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**PRD 产品需求文档 Skill —— 用 AI 规范生成和评审产品需求文档**

模板标准化 · 必填节不遗漏 · 需求可验收可追溯

</div>

---

## 🤖 在 OpenClaw 中使用

将本 Skill 克隆到 OpenClaw 工作空间即可自动触发：

```bash
cd your-openclaw-workspace/skills
git clone git@github.com:ai-fzx/fzx_prd_doc.git fzx_prd_doc
```

**直接说这些话，AI 就会帮你写或评审 PRD：**

| 类型 | 示例表述 |
|------|----------|
| 📝 写 PRD | 帮我写一份 PRD、生成产品需求文档、按模板写需求 |
| ✏️ 写具体需求 | 帮我写一个登录模块的需求、给这个功能写个需求文档 |
| 🔍 评审 PRD | 审一下这份 PRD、帮我检查需求文档、评审这份文档 |
| 📋 补全模板 | 帮我补全 PRD 模板、按标准格式写产品需求 |
| 💬 询问细节 | PRD 怎么写、需求文档包括哪些内容 |

**示例对话：**

> 你：帮我写一份电商 APP 用户签到功能的 PRD
> AI：请问几个关键信息：1)签到的主要目的是什么？（拉新/促活/留存）2)目标用户是谁？3)核心希望达成什么指标？

> 你：这是我的 PRD，帮我检查一下 [粘贴内容]
> AI：✅ 背景与问题、目标与成功指标、用户与场景
> 🔴 缺失：验收标准（非功能需求未量化）
> 🟡 建议：功能需求 ID 不连续，建议补充 P2 优先级说明

---

## ✨ 功能概览

| 功能 | 说明 |
|------|------|
| 📝 **PRD 生成** | 根据产品背景、目标、场景，自动按模板生成完整 PRD |
| 🔍 **PRD 评审** | 对已有 PRD 做符合性检查，输出：✅符合 / 🔴必改 / 🟡建议 |
| 📋 **模板提供** | 内置完整 PRD 模板和需求书写规范，可直接使用 |
| ✅ **自检脚本** | 一键检查 PRD 必填节是否完整 |

---

## 📋 PRD 必填节

一份完整的 PRD 必须包含以下六个章节：

1. **背景与问题** — 解决什么问题、为谁、当前痛点
2. **目标与成功指标** — 业务目标 + 可衡量的 KPI
3. **用户与场景** — 目标用户 + 核心使用场景
4. **功能需求** — 用户故事格式，带 ID 和优先级（P0/P1/P2）
5. **范围与边界** — 本期做 vs 本期不做
6. **验收标准** — 每条需求对应可验证的验收条件

---

## 📁 文件结构

```
fzx_prd_doc/
├── SKILL.md                    # 技能描述（供 AI Agent 读取）
├── README.md                   # 本文档
├── LICENSE                    # MIT 许可证
└── prd-skill/
    ├── SKILL.md               # PRD 技能核心逻辑
    └── references/
        ├── prd-template.md    # 完整 PRD 模板（含示例）
        └── writing-rules.md    # 需求书写规范
```

---

## 📖 参考资料

### PRD 模板

查看完整 PRD 示例（含所有章节的写法示范）：
[references/prd-template.md](prd-skill/references/prd-template.md)

### 需求书写规范

查看用户故事、验收标准、禁止表述的详细规范：
[references/writing-rules.md](prd-skill/references/writing-rules.md)

---

## 🔧 自检脚本

检查 PRD 是否包含所有必填节：

```bash
# Linux/macOS
bash prd-skill/scripts/check-prd.sh PRD文件路径.md

# 示例
bash prd-skill/scripts/check-prd.sh my-prd.md
```

---

## 🙋 常见问题

**Q：AI 生成的 PRD 可以直接用吗？**

> AI 生成的是初稿，需要产品经理补充具体数据（如转化率基线、用户规模）、技术约束（如性能要求）。占位符 `[请补充：xxx]` 标注了需要补充的位置。

**Q：评审模式会改我的原文吗？**

> 不会。评审模式只输出检查报告，标注问题和改进建议，由你决定是否采纳。

**Q：支持导出到 Confluence/飞书/Notion 吗？**

> PRD 输出为标准 Markdown，可直接复制粘贴到任何平台。表格、标题层级均已适配。

---

## 👤 联系与作者

**风之馨**，风之馨品牌创始人。

| 项目 | 内容 |
|------|------|
| GitHub | [@ai-fzx](https://github.com/ai-fzx) |
| 公众号 | 风之馨技术录 |
| 问题反馈 | [GitHub Issues](https://github.com/ai-fzx/fzx_prd_doc/issues) |

---

## 📄 License

[MIT](LICENSE) © 风之馨
