# ✍️ The OpenClaw SKILL.md Writing Guide / 技能编写指南

Writing a `SKILL.md` is not like writing regular documentation. You are programming an LLM's behavior.

编写 `SKILL.md` 不同于编写普通文档，你实际上是在对大语言模型 (LLM) 的行为进行编程。

## 1. The "One-Liner" Purpose / 一句话目标
Start your `SKILL.md` with a single, unambiguous sentence explaining exactly what this skill does and when to use it.
*Example: "Use this skill ONLY when the user asks to format a disk."*

在 `SKILL.md` 的开头用一句毫无歧义的话，准确解释这个技能的作用以及何时使用。
*示例：“仅当用户要求格式化磁盘时使用此技能。”*

## 2. Strict Tool Boundaries / 严格的工具边界
Agents will hallucinate tools if you aren't explicit.
- **List available commands**: Explicitly state which CLI commands are allowed.
- **Negative constraints**: Tell the agent what it is NOT allowed to do.
  *Example: "NEVER use `rm -rf`. ALWAYS use `trash`."*

如果你不明确指出，Agent 可能会产生工具幻觉。
- **列出可用命令**：明确说明允许使用哪些 CLI 命令。
- **负面约束**：告诉 Agent 哪些事情绝对不能做。
  *示例：“绝对不要使用 `rm -rf`。始终使用 `trash`。”*

## 3. The "Probe-First" Principle / “探测优先”原则
Require the agent to read state before changing it.
*Example: "Before appending to the log file, use `tail -n 10` to read the current context."*

要求 Agent 在更改状态之前先读取状态。
*示例：“在附加日志文件之前，先使用 `tail -n 10` 读取当前上下文。”*

## 4. Output Formatting / 输出格式
If the skill requires the agent to reply in a specific way to the user or to another agent, define the exact schema (e.g., JSON, specific Markdown blocks).

如果技能要求 Agent 以特定的方式（如 JSON，或特定的 Markdown 块）回复用户或其他 Agent，请定义确切的数据结构。

## 5. Anthropomorphization limits / 拟人化限制
Tell the agent whether it should speak like a human, or just silently execute and return `NO_REPLY`.

告诉 Agent 是应该像人类一样说话，还是默默执行命令并返回 `NO_REPLY`。
